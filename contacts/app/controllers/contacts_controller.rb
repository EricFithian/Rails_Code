class ContactsController < ApplicationController
  def index
    @contacts = Contact.all
    @name = @contacts.name
    @number = @contacts.number
    @email = @contacts.email
    @image = @contacts.image
    @address = @contacts.address
    render 'index.html.erb'
  end
end
