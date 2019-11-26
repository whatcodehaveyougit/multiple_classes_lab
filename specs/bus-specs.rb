require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

# The more require relatives - the higher up the chain the more require relatives there will be. 
require_relative('../bus')
require_relative('../person')


class BusTest < MiniTest::Test

	def setup()
		@bus = Bus.new(22, "Ocean Terminal")
		@person = Person.new("Gary", 105)
		@person_one = Person.new("Sigurd", 106)

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

	def test_passengers_array_starts_empty
		assert_equal(0, @bus.passenger_count)
	end

	def test_can_add_passenger_to_bus
		@bus.pickup(@person)
		assert_equal(1, @bus.passenger_count)
	end

	def test_can_remove_passenger_to_bus
		@bus.pickup(@person)
		@bus.pickup(@person_one)
		@bus.drop_off(@person)
		assert_equal(1, @bus.passenger_count)
	end

	def test_empty_bus
		@bus.pickup(@person)
		@bus.pickup(@person_one)
		@bus.empty_bus()
		assert_equal(0, @bus.passenger_count)
	end	


end