require "./Motorcycle.rb"
require "./Moped.rb"
require "./Vehicle.rb"
require "./email_reportable.rb"


	motorcycle1 = StoreFront::Motorcycle.new(color: "ruby red", price: 5000, model: "monster", make: "ducati")
	p motorcycle1.make
	p motorcycle1.model
	p motorcycle1.price
	p motorcycle1.color
	p motorcycle1.color = "royal blue"
	#motorcycle1.discount
	motorcycle2 = StoreFront::Motorcycle.new(price: 7000, make: "kawasaki", color: "ninja green", model: "ninja")
	p motorcycle2.make
	p motorcycle2.model
	p motorcycle2.price
	p motorcycle2.color
	# motorcycle3 = Motorcycle.new("forest green", 12000, "thruxton", "triumph")

	moped = StoreFront::Moped.new({color: "black", price: 9.99, model: "bread", make: "french", shelf_life: 1})
	p food_item.shelf_life
