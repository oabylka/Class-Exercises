class ParamsController < ApplicationController
	def query_params
		@name = params[:name]
			if @name.starts_with?("A")
				@message = "Hey,your name starts with the first letter of the alphabet!"
			end
	end

	def guess
		@answer = 36
		@guess = params[:guess]
			if @guess.to_i>@answer
				@message = "Nope, go lower!"
			elsif @guess.to_i<@answer
				@message = "Nope go higher!"
			else
				@message = "That's right!"
			end
	end
end


