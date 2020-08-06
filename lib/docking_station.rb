
class DockingStation
  attr_reader :stored_bikes

  def initialize
    @stored_bikes = Array.new
    @current_capacity = 20
  end

  def release_bike
    raise "No bikes are docked here" if @stored_bikes.empty?
    @stored_bikes.pop
  end

  def dock(bike)
    raise "Capacity at this docking station is full" if  @stored_bikes.count >= @current_capacity
    @stored_bikes.push(bike)
  end

end


