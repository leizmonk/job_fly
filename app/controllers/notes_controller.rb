class NotesController < ApplicationController
  before_action :authenticate_user!

  def index
    @note = Note.all
  end

  def new
    @note = Note.new
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
    
  end
end