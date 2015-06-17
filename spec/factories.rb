FactoryGirl.define do
  factory :user do
    email "foo@example.com"
    password "password1"
    password_confirmation "password1"
  end
end