# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  after_create :create_cart
  after_create :generate_mail

  def create_cart
    Cart.create()
    puts "==================== Cart Created ===================="
  end

  def generate_mail
    UserCreateMailer.welcome_email(id).deliver_now
  end
end
