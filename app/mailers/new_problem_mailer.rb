class NewProblemMailer < ActionMailer::Base
  # default from: "info@homeworkhelper.com"
  
  def new_problem(user,problem)
    @user = user
    @problem = problem
    mail(:to => @user.email, 
         :subject => "Thanks for submitting a problem!")
  end
end
