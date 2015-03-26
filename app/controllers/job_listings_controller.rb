class JobListingsController < ApplicationController
  def index
    @job_listing = JobListing.all
  end

  def new
    @job_listing = JobListing.new
  end

  def create
    
  end

  def edit
    
  end

  def update
    
  end

  def destroy
    
  end

  def show
    @job_listing = JobListing.find(params[:id])
    @notes = Note.find(params[:id])
  end
end