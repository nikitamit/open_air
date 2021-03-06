require 'spec_helper'

describe Api::V1::TimesheetsController do
  let(:user) { users(:manager) }

  describe 'GET index' do
    subject { get :index, format: :json }

    it_should_behave_like 'a page which requires login'

    context 'when logged in' do
      before do
        OpenAir::Request.stub(:request).and_return { {'Timesheet' => {foo: :bar}} }
        sign_in user
      end

      it { should be_success }
      its(:body) { should == {foo: :bar}.to_json }
      its(:content_type) { should == Mime::JSON }

      it 'makes the correct OpenAir request' do
        OpenAir::Request.should_receive(:request).with(:timesheet, auth: user.open_air_auth)
        subject
      end
    end
  end
end
