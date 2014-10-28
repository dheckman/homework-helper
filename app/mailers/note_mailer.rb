class NoteMailer < ActionMailer::Base
  default from: "no-reply@example.com"

  def new_note(user,note)
    @user = user
    @note = note
    mail(:to => @user.email,
         :subject => "Someone has commented on your problem.")
  end
end
