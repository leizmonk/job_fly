require 'rails_helper'

RSpec.describe WelcomeController, :type => :controller do
  # Testing welcome controller index page
  describe "GET #index" do
    # Index page responds with HTTP 200 if running
    it "responds successfully with an HTTP 200 status code" do
      get :index
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end
  end
end
