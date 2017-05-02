class Api::V1::PeopleController < ApplicationController

	def index
		@people = Person.all
	end

	def create
		@person = Person.create(name: params[:name], bio: params[:bio], bioVisible: false)
		

		if @person.save
			render 'show.json.jbuilder'
		else
			render json: { errors: @person.errors.full_messages}, 
			status: 422
		end
	end

	def destroy
		@person = Person.find_by(params[:id])
	end
end
