Factory.define :user do |f|
  f.sequence(:email) { |n| "foo#{n}@example.com"}
  f.password "password1"
  f.password_confirmation "password1"
end