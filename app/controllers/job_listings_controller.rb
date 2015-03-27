class JobListingsController < ApplicationController
  def index
    @job_listing = JobListing.all
  end

  def new
    @job_listing = JobListing.new
    @note = Note.new
  end


  def create
    @job_listing = JobListing.find(params[:id])    
    @note = Note.new(note_params)

    if @note.save
      redirect_to '/'
    else
      render :new
    end
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

  def note_params
    params.require(:note).permit(:text_field)
    params.require(:note).permit(:status)  
  end
end