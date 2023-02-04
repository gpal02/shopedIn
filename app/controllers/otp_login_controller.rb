class OtpLoginController < ApplicationController
	def request_otp
    user = otp_user
    user.send_otp
    render json: {}, status: 200
  end

  def otp_login
    user = otp_user
    raise SomeError unless user.verify_otp(params[:otp])

    ...
    #   Do your login and response here, e.g. login_user if you're using something like Devise
  end

  private

  def otp_user
    user = User.find_by(mobile_number: params[:mobile_number])
    raise SomeError unless user

    user
  end
end
