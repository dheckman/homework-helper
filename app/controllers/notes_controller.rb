class NotesController < ApplicationController
  before_action :authenticate
  before_action :set_note, only: [:destroy, :update]


  def new
    @note = Note.new
  end

  def create
    @problem = Problem.find(params[:problem_id])
    @note = current_user.notes.build(note_params)
    @note.problem = @problem
    respond_to do |format|
      format.html do
        if @note.save && @note.user != @problem.user
          NoteMailer.new_note(@note.problem.user,@note).deliver
          redirect_to @problem, notice: "You successfully submitted a note!"
        else
          render "notes/show"
          # redirect_to problem_path(@problem), alert: "Sorry, you must enter a note. "
        end
      end

      format.js do
        if @note.save
          render :create, status: :created
        else
          render nothing: true, status: :bad_request
        end
      end
    end
  end
  # if @note.save && @note.user != @problem.user
  #   NoteMailer.new_note(@note.problem.user,@note).deliver
  #   redirect_to problem_path(@problem), notice: "You successfully submitted a note!"
  # else
  #   redirect_to problem_path(@problem), alert: "Sorry, you must enter a note. "
  # end
  # end


  private

  def set_note
    @note = Note.find(params[:id])
  end

  def note_params
    params.require(:note).permit(:text)
  end
end
