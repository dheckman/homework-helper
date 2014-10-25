class NotesController < ApplicationController
  def new
  end

  def create
    @note = current_user.notes.build(note_params)
    if @note.save
      redirect_to root_path, notice: "You successfully submitted a note!"
    else
      render :new
    end
  end
  
  
  private
  
  def note_params
    params.require(:note).permit(:text)
  end
end
