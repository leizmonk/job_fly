require 'rails_helper'
require 'factory_girl_rails'
require 'capybara'

RSpec.describe "User Registration Page", type: :request do
  it "responds sucessfully with an HTTP 200 status code" do
    get new_user_registration_path
    expect(response).to be_success
    expect(response).to have_http_status(200)
  end
end

RSpec.describe "User Sign Up", type: :feature do
  it "allows a user to sign up via the devise registration/new page" do
    user = FactoryGirl.create(:user)
    visit new_user_registration_path
    fill_in "Email", :with => user.email
    fill_in "Password", :with => user.password
    fill_in "Password confirmation", :with => user.password_confirmation
    click_button "Sign Up"
  end
end
