class ContactsController < ApplicationController
  def create
    ContactMailer.contact_send(contact_params).deliver
  end

  private

  def contact_params
    params.require(:contact).permit(:first_name, :last_name, :email)
  end
end
