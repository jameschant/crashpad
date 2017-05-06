class ContactMailer < ActionMailer::Base
  default to: 'jamescodetest@gmail.com'
  
  def contact_email(name, email, body)
    @name = name
    @email = email
    @phone = phone
    @uni = uni
    @groupsize = groupsize
    @body = body
    
    mail(from: email, subject: 'Contact Form Message')
  end
end