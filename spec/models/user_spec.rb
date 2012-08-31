require 'spec_helper'

describe User do
  let(:user) { users(:manager) }

  describe 'validations' do
    it 'has a valid factory' do
      build(:user).should be_valid
    end

    it 'has a valid fixture' do
      users(:manager).should be_valid
    end

    [:username, :password, :company, :email].each do |field|
      it { should validate_presence_of field }
    end

    it { should validate_uniqueness_of :username }
  end

  describe 'mass assignment' do
    [:username, :password, :password_confirmation, :remember_me, :company, :email].each do |field|
      it { should allow_mass_assignment_of field }
    end

    [:id, :created_at, :updated_at].each do |field|
      it { should_not allow_mass_assignment_of field }
    end
  end

  describe 'open_air_auth' do
    subject { user.open_air_auth }

    it { should == {user: user.username, password: user.password, company: user.company} }
  end
end
