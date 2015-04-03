class JobListingsController < ApplicationController
  before_action :authenticate_user!

  def index
    @job_listing = current_user.job_listings
  end

  def new
    # Instantiate JobListing object and Indeed Client
    @job_listing = JobListing.new
    @indeed_client = Indeed::Client.new "6479557493286843"

    # Assign instance variables to required search params for Indeed Search API
    # Some values derived from user input in form
    @search_query = params[:q]
    @search_location = params[:l]
    @user_ip = request.remote_ip
    @user_agent = request.headers['User-Agent']

    # Create a hash of search params to pass to Indeed Search API
    @search_params = {
      :q => @search_query,
      :l => @search_location,
      :userip => @user_ip,
      :useragent => @user_agent,
      :format => 'json',
    }

    @search_results = @indeed_client.search(@search_params)
    data = JSON.parse(@search_results.body)
  end

  def create
    @job_listing = current_user.job_listings.build(listing_params)

    if @job_listing.save
      redirect_to job_listing_path(@job_listing)
    else
      render :new
    end  
  end

  def edit
    @job_listing = current_user.job_listings.find(params[:id])
    @note = Note.find(params[:id])
  end

  def update
    @note = Note.find(params[:id])
    @job_listing = current_user.job_listings.find(params[:id])

    if @job_listing.update_attributes(listing_params)
      redirect_to job_listing_path(@job_listing)
    else
      render :edit
    end    
  end

  def destroy
    # Delete action redirects to job listings index upon successful deletion
    flash.now[:notice] = "Delete operation failed" unless JobListing.destroy(params[:id])
    @job_listing = current_user.job_listings
    render 'job_listings/index'
  end

  def show
    @job_listing = current_user.job_listings.find(params[:id])
    @notes = @job_listing.notes
    @note = Note.new
  end

  private

  def listing_params
    params.require(:job_listing).permit(:listing_url)
  end
end