class Vehicle
  attr_accessor :weight
  def initialize
    @speed = 0
    @direction = 'north'
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

class Car < Vehicle
  def initialize
    super 
    @fuel = "25mpg"
    @make = "honda"
    @model = "civic"
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle
  def initialize
    super 
    @speed = 0
    @type = "road"
    @weight = 30
  end

  def ring_bell
    puts "Ring ring!"
  end
end

bike = Bike.new
car = Car.new
p bike.accelerate
p car.accelerate
bike.ring_bell
car.honk_horn
p bike.weight

