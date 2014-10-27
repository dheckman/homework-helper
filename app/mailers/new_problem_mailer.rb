class NewProblemMailer < ActionMailer::Base
  default from: "no-reply@example.com"

  def new_problem(user,problem)
    @user = user
    @problem = problem
    mail(:to => @user.email,
         :subject => "Thanks for submitting a problem!")
  end
end
