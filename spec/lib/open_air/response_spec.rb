require 'spec_helper'

describe OpenAir::Response do
  let(:body) { fixture_file('open_air/read.xml.erb') }
  let(:status) { "200" }
  let(:http_response) do
    http = Object.new
    http.stub(:status) { status }
    http.stub(:body) { body }
    http
  end
  let(:response) { OpenAir::Response.new(http_response, :read)}

  describe 'validations' do
    subject { response }

    context 'when the request was a success' do
      it { should be_a OpenAir::Response }
      its(:response_for_type) { should == {'status' => '0', 'Foo' => {'Bar' => 'Baz'}} }
    end

    context 'when the request was a failure' do
      context 'and its a http error code' do
        let(:status) { "400" }

        it { expect { subject }.to raise_error OpenAir::Error, 'OpenAir return HTTP code 400' }
      end

      context 'and its an OpenAir error code' do
        let(:body) { fixture_file('open_air/read.xml.erb', read_status: 1) }

        it { expect { subject }.to raise_error OpenAir::Error, 'OpenAir return a non zero error code' }
      end
    end
  end

  describe '#as_json' do
    subject { response.as_json }
  end
end
