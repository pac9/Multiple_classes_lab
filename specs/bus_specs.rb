require("minitest/autorun")
require("minitest/rg")
require_relative("../bus.rb")
require_relative("../person.rb")

class BusTest < MiniTest::Test

  def setup
    # passengers = ["Carl", "Tony"]
    @bus = Bus.new(22, "Ocean Terminal")
    @passenger = Person.new("Pauline", 18)
  end

  def test_route_number
    assert_equal(22, @bus.route_number)
  end

  def test_destination
    assert_equal("Ocean Terminal", @bus.destination)
  end

  def test_sound_of_bus
    assert_equal("Brum brum", @bus.drive)
  end

  def test_bus_empty
    assert_equal(0, @bus.passenger_count)
  end

  def test_can_pick_up_passenger
    @bus.pick_up(@passenger)
    assert_equal(1, @bus.passenger_count)
  end

end
