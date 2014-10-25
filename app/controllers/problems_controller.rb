class ProblemsController < ApplicationController
  before_action :set_problem, only: [:show, :vote]

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

  def vote
    @vote = @question.votes.build(user: current_user, value: params[:vote][:value])
    if @vote.save
      redirect_to @question, success: "Your vote was recorded."
    else
      redirect_to @question, error: "There was a problem saving your vote."
    end
  end

  private

  def set_problem
    @problem = Problem.find(params[:id])
  end

  def problem_params
    params.require(:problem).permit(:text, :tried)
  end
end
