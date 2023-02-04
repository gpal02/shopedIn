# frozen_string_literal: true

class UserCreateMailer < ApplicationMailer
  default from: 'e-commerce@gmail.com'

  def welcome_email(id)
    @user = User.find(id)
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Thanks for sign up ')
  end
end
