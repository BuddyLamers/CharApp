class UserMailer < ActionMailer::Base
  default from: "test@example.com"

  def activation_email(user)
    @user = user
    @url = '/activate'
    mail(to: user.email, subject: "Welcome to the site! Please activate your account.")
  end


end