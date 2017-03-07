class PagesController < ApplicationController
	def hello_method
		@title = "Hello World"
		@sum = 1+1
		@current_time = Time.now.strftime("%A, %b %d")
		render 'hello.html.erb'
	end

	def show_songs
		@title = "This is a list of songs"
		render 'show_songs.html.erb'
	end

	def play_game
		@title = "We're playing the hunger games"
		render 'play_game.html.erb'
	end

	def contact_method
		render 'contact.html.erb'
	end

	def about
		@title = "about us"
	end
end
