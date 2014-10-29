class ProblemsController < ApplicationController
  # before_create :set_problem, only: [:show]
  
  def index
    @problems = Problem.order(created_at: :asc).paginate(page: params[:page], per_page: 5)
  end
  
  def new
    @problem = Problem.new
  end
  
  def create
    @problem = current_user.problems.build(problem_params)
    if @problem.save
      @user = current_user
      NewProblemMailer.new_problem(@problem.user,@problem).deliver
      redirect_to root_path, notice: "You successfully asked a question!"
    else
      render :new
    end
  end
  
  def resolve
    @problem = Problem.find(params[:problem_id])
    if current_user.id == @problem.user.id
      @problem.destroy
      respond_to do |format|
        format.html do
          @problem.update_attribute(:resolved, true)
            redirect_to @problem, notice: "You've successfully resolved your problem."
        end

        format.js do
          render 'problems/resolve', layout: false
        end
      end
    end
  end

  def show
    @problem = Problem.find(params[:id])
    @notes = @problem.notes
    @note = Note.new
  end
  
  private
  
  def set_problem
    @problem = Problem.find(params[:id])
  end
  
  def problem_params
    params.require(:problem).permit(:text, :tried, :resolved)
  end
end
