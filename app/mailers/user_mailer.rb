class UserMailer < ApplicationMailer
  default from: "eemccracken@gmail.com"

  def contact_form(email, name, message)
  @message = message
    mail(from: email,
      to: "eemccracken@gmail.com",
      subject: "A new contact form message from #{name}")
  end
end
