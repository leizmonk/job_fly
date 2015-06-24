require 'rails_helper'

RSpec.describe JobListingsController, type: :controller do
  # Testing index page actions
  describe "GET #index" do
    # Index page responds with HTTP 200 if running
    it "responds successfully with an HTTP 200 status code" do
      get :index
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    # Index page template renders correctly
    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end
  end  
end