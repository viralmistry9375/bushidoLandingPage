class ContactMailer < ApplicationMailer

  def contact_send(contact)
    @contact = contact
    mail(to:  ENV['TO_EMAILS'], subject: 'Contact', from: @contact['email'])
  end
end
