class ProblemsController < ApplicationController
  
  def index
    @problems = Problem.order(created_at: :desc)
  end
  
  def new
    @problem = Problem.new
  end
  
  def create
    @problem = current_user.problems.build(problem_params)
    if @problem.save
      redirect_to @problem, notice: "You successfully asked a question!"
    else
      render :new
    end
  end

  def show
    @problem = Problem.find(params[:id])
  end
  
  private
  
  def problem_params
    params.require(:problem).permit(:text, :tried)
  end
end
