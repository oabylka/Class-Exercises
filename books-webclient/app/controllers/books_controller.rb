class BooksController < ApplicationController
	def show
		@id = params[:id]

		@book = Unirest.get("http://localhost:3000/api/v1/books/#{@id}.json").body
	end

	def index
		@books = Unirest.get("http://localhost:3000/api/v1/books.json").body
	end

	def new
	end

	def create
		@book = Unirest.post("http://localhost:3000/api/v1/books", 
			:headers => {"Accept" => "application/json"},
			:parameters => {:title => params[:title], 
					:author => params[:author],
					:publisher => params[:publisher],
					:genre => params[:genre]}).body

		redirect_to "/books/#{@book['id']}"
	end
end
