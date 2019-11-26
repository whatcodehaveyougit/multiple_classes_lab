require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

# The more require relatives - the higher up the chain the more require relatives there will be. 
require_relative('../bus')


class BusTest < MiniTest::Test

def setup()
	@bus = Bus.new(22, "Ocean Terminal")

end	

def test_bus_has_route_number
	assert_equal(22, @bus.route_number)
end

def test_bus_has_destination
	assert_equal("Ocean Terminal", @bus.destination)
end

def test_bus_has_drive_method
	assert_equal("brum, brum", @bus.drive)
end






end