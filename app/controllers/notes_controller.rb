class NotesController < ApplicationController
  before_action :authenticate_user!

  def index
    @note = Note.all
  end

  def new
    @note = Note.new
  end

  def create
    @note = Note.new(note_params)
    @note.job_listing_id = params[:job_listing_id]

    if @note.save
      redirect_to job_listing_path(@note.job_listing_id)
    else
      render :new
    end    
  end

  def edit
    @job_listing = JobListing.find(params[:id])
    @note = Note.find(params[:id])
  end

  def update
    @job_listing = JobListing.find(params[:id])
    @note = Note.find(params[:id])

    if @note.update_attributes(note_params)
      redirect_to job_listing_path(@note.job_listing_id)
    else
      render :edit
    end       
  end

  def destroy
    @note = Note.find(params[:id])

    if @note.destroy
      redirect_to job_listing_path(@note.job_listing_id)
    else
      render :new
    end       
  end

  def show
    
  end

  private

  def note_params
    params.require(:note).permit(:title, :text_field, :due_date, :status)
  end
end