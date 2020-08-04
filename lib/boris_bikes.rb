
class DockingStation
  attr_reader :stored_bikes
  def initialize
  @stored_bikes = Array.new
  end
  def release_bike
    @bike = Bike.new
  end
  def dock_bike(bike)
    @stored_bikes << bike
  end

end

class Bike
  def working?
    true
  end
end
