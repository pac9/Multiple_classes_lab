class Bus
  attr_reader :route_number, :destination

  def initialize(route, destination)
    @route_number = route
    @destination = destination
    @passengers = []
  end

  def drive
    return "Brum brum"
  end

  def passenger_count
    return @passengers.count
  end

  def pick_up(passenger)
    @passengers.push(passenger)
  end

end
