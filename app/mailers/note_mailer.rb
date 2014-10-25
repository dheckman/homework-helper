class NoteMailer < ActionMailer::Base
  default from: "info@homeworkhelper.com"
  
  def new_note(user,note)
    @user = user
    @note = note
    mail(:to => @user.email, 
         :subject => "Someone has commented on your problem.")
  end
end
