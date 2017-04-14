class UserMailer < ApplicationMailer
  def register_email(user)
    @user = user
    mail(to: user.email, subject: "Welcome to the site!")
  end
end
