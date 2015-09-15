class ContactsController < ApplicationController
  def list
    @contacts = Contact.all
  end
end
