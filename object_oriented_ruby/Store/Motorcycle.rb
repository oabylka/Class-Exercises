require "./Vehicle.rb"
require "./email_reportable.rb"

Module StoreFront
	class Motorcycle < Vehicle
		include AddMotoGear

	end
end