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
    if current_user && current_user.id == @problem.user.id
      @problem.update_attribute(:resolved, true)
      @problem.delete
      redirect_to @problem, notice: "You've successfully resolved your problem."
    else
      redirect_to @problem, alert: "sorry, you can't do that."
    end
  end

  def show
    @problem = Problem.find(params[:id])
  end
  
  private
  
  def set_problem
    @problem = Problem.find(params[:id])
  end
  
  def problem_params
    params.require(:problem).permit(:text, :tried, :resolved)
  end
end
