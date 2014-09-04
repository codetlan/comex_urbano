class NotificationsMailer < ActionMailer::Base
  default from: "Contacto Comex<comexurbano@comex.com.mx>"

  def new_message(name, lastname, email, subject, message)
    @name = name
    @lastname = lastname
    @email = email
    @message = message
    mail(to: "comexurbano@comex.com.mx", subject: subject)
  end

end
