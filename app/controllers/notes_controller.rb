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
      redirect_to job_listing_notes_path(@note)
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
    
  end

  private

  def note_params
    params.require(:note).permit(:body)
  end
end