require "./Vehicle.rb"
require "./email_reportable.rb"

Module StoreFront
	class Moped < Vehicle
	#attr_accessor :shelf_life
	include AddMotoGear
		def initialize(input_hash)
			super
			@shelf_life = input_hash[:shelf_life]
		end
	end
end