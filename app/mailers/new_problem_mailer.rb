class NewProblemMailer < ActionMailer::Base
  default from: "info@homeworkhelper.com"
  
  def new_problem(user)
    @user = user
    @url = 'www.google.com'
    
    mail(:to => @user.email, 
         :subject => "Thanks for submitting a problem!")
  end
end
