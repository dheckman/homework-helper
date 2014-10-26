class NotesController < ApplicationController
  before_action :authenticate
  before_action :set_note, only: [:destroy, :update]
  
  
  def new
    @note = Note.new
  end

  def create
    @problem = Problem.find(params[:problem_id])
    @note = @problem.notes.build(note_params)
    if @note.save && @note.user != @problem.user
      NoteMailer.new_note(@note.problem.user,@note).deliver    
      redirect_to problem_path(@problem), notice: "You successfully submitted a note!"
    else
      redirect_to problem_path(@problem), alert: "Sorry, you must enter a note. "
    end
  end
  
  
  private
  
  def set_note
		@note = Note.find(params[:id])
  end
  
  def note_params
    params.require(:note).permit(:text)
  end
end
