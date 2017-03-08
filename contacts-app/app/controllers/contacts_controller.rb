class ContactsController < ApplicationController
	def view_contact
		@first_contact = Contact.first
	end

	def view_all
		@contacts = Contact.all
	end
end
