class BooksController < ApplicationController
	def index
		@books = Book.all
	end


	def show
		@book = Book.find_by(id: params[:id])
	end

	def create
		@book = Book.create(
			title: params[:title],
			author: params[:author]
			)

		render :show
	end

	def destroy
		@book = Book.find_by(id: params[:id])
		@book.destroy!

	end

	def update
		@book = Book.find(params[:id])



		@book.update(title: params[:title],
			author: params[:author],
			publisher: params[:publisher],
			genre: params[:genre]
			)
		render :show
	end
end
