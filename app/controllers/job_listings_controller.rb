class JobListingsController < ApplicationController
  before_action :authenticate_user!

  def index
    @job_listing = current_user.job_listings
  end

  def new
    @job_listing = JobListing.new
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
    
  end

  def show
    @job_listing = JobListing.find(params[:id])
    @notes = @job_listing.notes
    @note = Note.new
  end

  private

  def listing_params
    params.require(:job_listing).permit(:body)
  end
end