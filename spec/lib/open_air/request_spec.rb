require 'spec_helper'

describe OpenAir::Request do
  let(:request) { OpenAir::Request.new }
  let(:url) { ['https://', OPEN_AIR['host'], ':80', OPEN_AIR['path']].join('') }
  let(:user) { users(:manager) }
  let(:params) { {auth: user.open_air_auth, method: 'all', type: 'Timesheet'} }

  describe '#request_xml' do
    subject { request.request_xml(:read, params) }

    it { should include('Auth') }
    it { should include(OPEN_AIR['key']) }
    it { should include(OPEN_AIR['client']) }
    it { should include("<company>#{user.company}</company>") }
    it { should include("<user>#{user.username}</user>") }
    it { should include("<password>#{user.password}</password>") }
  end

  describe '#request' do
    subject { request.request(:read, params) }

    context 'when the request was a success' do
      before do
        stub_request(:post, url).to_return(status: 200, body: fixture_file('open_air/read.xml.erb'))
        OpenAir::Response.stub(:new).and_return { 'bar' }
      end

      it { should == 'bar' }

      it 'should create the correct response object' do
        OpenAir::Response.should_receive(:new).with(kind_of(Net::HTTPResponse), :read)
        subject
      end

      it 'should make the correct request' do
        subject
        assert_requested :post, url, body: request.request_xml(:read, params)
      end
    end
  end
end
