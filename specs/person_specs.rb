require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

# The more require relatives - the higher up the chain the more require relatives there will be. 
require_relative('../person.rb')


class PersonTest < MiniTest::Test

def setup()
	@person = Person.new("Gary", 105)
end	

def test_person_has_name
	assert_equal("Gary", @person.name)
end

def test_person_has_age
	assert_equal(105, @person.age)
end







end