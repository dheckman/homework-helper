class ProblemsController < ApplicationController
  before_action :authenticate
  before_action :set_problem, only: [:show, :edit, :update, :destroy]

  def new
    @problems = Problem.new
  end

  def create
    @problems = current_user.problems.build(questions_params)

    if @problem.save
      redirect_to @problem, success: "You problem has been posted. "
    else
      render :new
    end

  end

  def show

  end
end
