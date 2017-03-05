require "./Motorcycle.rb"
require "./Gear.rb"

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

gear_item = Gear.new({color: "black", price: 9.99, model: "bread", make: "french", shelf_life: 1})
p food_item.shelf_life






