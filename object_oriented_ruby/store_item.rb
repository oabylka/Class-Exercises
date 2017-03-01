class Motorcycle

	attr_reader :color, :model, :make
	#viewing data
	attr_writer  :color
	#changing data
	attr_accessor :price, :color
	#both viewing and changing data

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

motorcycle1 = Motorcycle.new(color: "ruby red", price: 5000, model: "monster", make: "ducati")
p motorcycle1.make
p motorcycle1.model
p motorcycle1.price
p motorcycle1.color
p motorcycle1.color = "royal blue"
#motorcycle1.discount
motorcycle2 = Motorcycle.new(price: 7000, make: "kawasaki", color: "ninja green", model: "ninja")
p motorcycle2.make
p motorcycle2.model
p motorcycle2.price
p motorcycle2.color
# motorcycle3 = Motorcycle.new("forest green", 12000, "thruxton", "triumph")

