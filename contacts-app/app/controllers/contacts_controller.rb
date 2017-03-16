class ContactsController < ApplicationController
	def show
		contact_id = params[:id]
		@contact = Contact.find_by(id: contact_id)
	end

	def index
		@contacts = Contact.all
	end

	def new

	end

	def create
		input_first_name = params[:first_name]
		input_middle_name = params[:middle_name]
		input_last_name = params[:last_name]
		input_email = params[:email]
		input_phone = params[:phone]

		@contact = Contact.create(first_name: input_first_name, middle_name: input_middle_name, last_name: input_last_name, email: input_email, phone: input_phone)
	end

	def edit
		contact_id = params[:id]
		@contact = Contact.find_by(id: contact_id)
	end

	def update
		input_first_name = params[:first_name]
		input_middle_name = params[:middle_name]
		input_last_name = params[:last_name]
		input_email = params[:email]
		input_phone = params[:phone]

		contact = Contact.find_by(id: params[:id])
		puts contact
		@contact = contact.update(first_name: input_first_name, middle_name: input_middle_name, last_name: input_last_name, email: input_email, phone: input_phone)
		redirect_to "/contacts/#{contact.id}"
	end

	def destroy
		contact_id = params[:id]
		@contact = Contact.find_by(id: contact_id)
		@contact.destroy

		redirect_to "/contacts"
	end
end
