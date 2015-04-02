class WelcomeController < ApplicationController
  def new
    @user = User.new
  end
end