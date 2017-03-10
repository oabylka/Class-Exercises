class ParamsController < ApplicationController
	def query_params
		@name = params[:name]
			if @name.starts_with?("A")
				@message = "Hey,your name starts with the first letter of the alphabet!"
			end
	end

	def form

	end

	def form_result
		@guess = params[:guess]
		@answer = 36
		@guess = params[:guess].to_i
			if @guess>@answer
				@message = "Nope, go lower!"
			elsif @guess<@answer
				@message = "Nope go higher!"
			else
				@message = "That's right!"
			end
	end

	# def form

	# end
	# def form_result
	# 	p params
	# end
end


