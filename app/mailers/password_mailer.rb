class PasswordMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.password_mailer.reset.subject
  #
  def reset
    @token = params[:user].signed_id(expires_in: 1.days, purpose: "password_reset")
    

    mail to: params[:user].email
  end
end
