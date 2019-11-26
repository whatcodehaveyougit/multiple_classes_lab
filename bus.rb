class Bus

	def initialize(route_number, destination)
		@route_number = route_number
		@destination = destination
		@passengers = []
	end

	attr_reader :route_number, :destination

	def drive()
		return "brum, brum"
	end	

	def passenger_count
		return @passengers.length
	end	

	def pickup(passenger)
		@passengers.push(passenger)
	end	

	def drop_off(passenger)
		@passengers.delete(passenger)
	end	

	def empty_bus()
		@passengers.clear
	end	
end

