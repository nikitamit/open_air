FactoryGirl.define do
  factory :user do
    username { generate(:string) }
    email 'someemail@example.com'
    password 'Password'
    password_confirmation 'Password'
    company 'Company'
  end
end
