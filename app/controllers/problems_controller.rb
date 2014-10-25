class ProblemsController < ApplicationController
  before_action :set_problem, only: [:show]
  
  def index
    @problems = Problem.order(created_at: :asc)
  end
  
  def new
    @problem = Problem.new
  end
  
  def create
    @problem = current_user.problems.build(problem_params)
    if @problem.save
      @user = current_user
      NewProblemMailer.new_problem(@user).deliver
      redirect_to root_path, notice: "You successfully asked a question!"
    else
      render :new
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
    params.require(:problem).permit(:text, :tried)
  end
end
