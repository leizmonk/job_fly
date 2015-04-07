class JobListingsController < ApplicationController
  before_action :authenticate_user!

  def index
    @job_listing = current_user.job_listings

    # if @job_listing != nil
    #   @job_listings = current_user.job_listings.page(params[:page]).per(10)
    # end
  end

  def new
    # Instantiate JobListing object and Indeed Client
    @job_listing = JobListing.new
    indeed_client = Indeed::Client.new "6479557493286843"

    # Assign instance variables to required search params for Indeed Search API
    # Some values derived from user input in form
    job_type = params[:jt]
    search_location = params[:l]
    search_query = params[:q]
    search_radius = params[:radius]
    search_time = params[:fromage]
    user_ip = request.remote_ip
    user_agent = request.headers['User-Agent']    

    # Create a hash of search params to pass to Indeed Search API
    search_params = {
      :fromage => search_time,
      :format => 'json',
      :highlight => 0,
      :jt => job_type,
      :l => search_location,
      :limit => 25,
      :q => search_query,
      :radius => search_radius,
      :raw => true,
      :start => 1,
      :userip => user_ip,
      :useragent => user_agent,
    }
    @search_results = indeed_client.search(search_params)
    
    # Parse JSON returned by Indeed Search API - get data desired for rendering to view
    @data = JSON.parse(@search_results.body)
  end

  def create
    # @job_listing = JobListing.new(listing_params)

    # if @job_listing.save
    #   redirect_to job_listing_path(@job_listing)
    # else
    #   flash.now[:notice] = "Sorry, an error occurred"      
    # end
  end

  def edit
    @job_listing = current_user.job_listings.find(params[:id])
    @note = Note.find(params[:id])
  end

  def add_to_saved
    # Get jobkey from the param in the URL
    jobkey = params['jobkey']
    indeed_client = Indeed::Client.new "6479557493286843"

    # Pass params to Indeed Get Job Details API
    job_params = {
      :format => 'json',
      :jobkeys => [jobkey],
    }
    # .jobs already generates a parsed JSON object, need to reference the result index
    @job_details = indeed_client.jobs(job_params)['results'][0]
    
    @job_listing = JobListing.new(
      position_name: @job_details['jobtitle'], 
      company_name: @job_details['company'], 
      location: @job_details['formattedLocation'], 
      description: @job_details['snippet'], 
      listing_url: @job_details['url'],
      date_posted: @job_details['date'],
      user_id: current_user.id,
      )

    if @job_listing.save
      redirect_to job_listing_path(@job_listing)
    else
      flash.now[:notice] = "Sorry, an error occurred"      
    end    
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
    @job_listing = JobListing.find(params[:id])
    @notes = @job_listing.notes
    @note = Note.new
  end

  private

  def listing_params
    params.require(:job_listing).permit(:jobkey)
  end
end
