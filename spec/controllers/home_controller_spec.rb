require 'spec_helper'

describe HomeController do
  let(:user) { users(:manager) }

  describe 'GET show' do
    subject { get :show }

    context 'when logged in' do
      it { should redirect_to new_user_session_path }
    end

    context 'when not logged in' do
      before { sign_in user }
      it { should be_success }
      it { should render_template :show }
    end
  end
end
