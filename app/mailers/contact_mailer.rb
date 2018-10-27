class ContactMailer < ApplicationMailer

  def contact_send(contact)
    @contact = contact
    mail(to:  ENV['TO_EMAILS'], subject: 'Contact')
  end
end
