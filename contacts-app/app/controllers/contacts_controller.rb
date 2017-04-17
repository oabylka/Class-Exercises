class ContactsController < ApplicationController
	def show
		contact = Contact.find_by(id: params[:id])
		contact_user_id = contact.user_id

		if current_user.id == contact_user_id
			contact_id = params[:id]
			@contact = Contact.find_by(id: contact_id)
		else
			flash[:danger] = "You can't see that contact!"
			redirect_to "/"
		end
	end

	def index
		group_id = params[:group_id]
			if group_id
				@group = Group.find_by(id: group_id)
				@contacts = @group.contacts
			else
				@contacts = []
			end
		@contacts = Contact.where(user_id: current_user.id)
	end

	def new

	end

	def create
		input_first_name = params[:first_name]
		input_middle_name = params[:middle_name]
		input_last_name = params[:last_name]
		input_address = params[:address]
		input_email = params[:email]
		input_phone = params[:phone]

		@contact = Contact.new(first_name: input_first_name, middle_name: input_middle_name, 
			last_name: input_last_name, email: input_email, 
			phone: input_phone, address: input_address, user_id: current_user.id)

		@contact.longitude = @contact.find_address(input_address)[0]
		@contact.latitude = @contact.find_address(input_address)[1]

		
		if @contact.save
			flash[:success] = "Contact Created!"
			redirect_to "/contacts/#{@contact.id}"
		else
			flash[:danger] = "Contact couldn't be created!"
			render "new.html.erb"
		end
	end
	
	def edit
		contact_id = params[:id]
		@contact = Contact.find_by(id: contact_id)
	end

	def update
		input_first_name = params[:first_name]
		input_middle_name = params[:middle_name]
		input_last_name = params[:last_name]
		input_long = Geocoder.coordinates(params[:address])[0]
		input_lat = Geocoder.coordinates(params[:address])[1]
		input_address = params[:address]
		input_email = params[:email]
		input_phone = params[:phone]

		contact = Contact.find_by(id: params[:id])
		puts contact
		@contact = contact.update(ffirst_name: input_first_name, middle_name: input_middle_name, 
			last_name: input_last_name, longitude: input_long, latitude: input_lat, email: input_email, 
			phone: input_phone, address: input_address)
		redirect_to "/contacts/#{contact.id}"
	end

	def destroy
		contact_id = params[:id]
		@contact = Contact.find_by(id: contact_id)
		@contact.destroy

		redirect_to "/contacts"
	end
end
