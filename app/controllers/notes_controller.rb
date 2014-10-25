class NotesController < ApplicationController
  before_action :authenticate
  
  def new
  end

  def create
    @problem = Problem.find(params[:problem_id])
    @note = @problem.notes.build(note_params)
    if @note.save
      redirect_to problem_path(@problem), notice: "You successfully submitted a note!"
    else
      render :new
    end
  end
  
  
  private
  
  def note_params
    params.require(:note).permit(:text)
  end
end
