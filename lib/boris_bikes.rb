
class DockingStation
  def release_bike
    Bike.new
  end
  def dock_bike(docking_station_name)
    'free'
  end
end

class Bike
  def working?
    true
  end
end
