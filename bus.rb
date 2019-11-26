class Bus

def initialize(route_number, destination)
	@route_number = route_number
	@destination = destination
end

attr_reader :route_number, :destination

def drive()
	return "brum, brum"
end	

end