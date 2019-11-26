require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

# The more require relatives - the higher up the chain the more require relatives there will be. 
require_relative('../bus_stop.rb')
require_relative('../bus.rb')
require_relative('../person.rb')


class BusStopTest < MiniTest::Test

def setup
	@bus_stop = BusStop.new("Princes Street")
	@person_one = Person.new("Sigurd", 106)
	@bus = Bus.new(22, "Ocean Terminal")
end

def test_can_add_person_to_queue
	@bus_stop.add_person_to_queue(@person_one)
	assert_equal(1, @bus_stop.queue_count())
end

def test_can_add_queue_of_passengers_to_bus
	@bus_stop.add_person_to_queue(@person_one)
	@bus_stop.add_person_to_queue(@person_one)
	@bus_stop.add_person_to_queue(@person_one)

	@bus.pick_up_from_stop(@bus_stop)

	assert_equal(3, @bus.passenger_count())
	assert_equal(0, @bus_stop.queue_count())
end

end