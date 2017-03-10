class ContactsController < ApplicationController
	def view_contact
		@first_contact = Contact.first
	end

	def view_all
		@contacts = Contact.all
	end

	def new_contact_form

	end

	def create_contact
		input_first_name = params[:first_name]
		input_last_name = params[:last_name]
		input_email = params[:email]
		input_phone = params[:phone]

		@contact = Contact.create(first_name: input_first_name, last_name: input_last_name, email: input_email, phone: input_phone)
	end
end
