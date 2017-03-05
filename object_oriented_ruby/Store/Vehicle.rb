Module StoreFront
	class Vehicle
		attr_reader :color, :model, :make
		#viewing data
		attr_writer  :color
		#changing data
		attr_accessor :price, :color, :shelf_life

		def initialize(input_hash)
			@color = input_hash[:color]
			@price = input_hash[:price]
			@model = input_hash[:model]
			@make = input_hash[:make]
		end

		def print_info
			puts "#{@make} #{@model} costs #{@price}"
		end

		def discount
			@price = price-(price*0.03)
			puts "Your discounted price is #{@price}"
		end
	end
end
