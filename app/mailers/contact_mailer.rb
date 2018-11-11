class ContactMailer < ApplicationMailer

  def contact_send(contact)
    @contact = contact
    mail(to:  ENV['TO_EMAILS'], subject: 'Contact', from: @contact['email'])
  end

  def user_send(contact)
    mail(to:  contact['email'], subject: 'Contact')
  end
end
