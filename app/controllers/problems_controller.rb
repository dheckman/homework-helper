class ProblemsController < ApplicationController
  
  def index
    @problem = Problem.order(created_at: :desc)
  end
  
  def new
    @problem = Problem.new
  end
  
  def create
  end

  def show
  end
  
  private
  
  def problem_params
    params.require(:problem).permit(:title, :text, :tried)
  end
end
