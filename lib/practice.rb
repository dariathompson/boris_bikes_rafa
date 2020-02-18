class DockingStation

def release_bike

end

docking_station = DockingStation.new
bike = docking_station.release_bike
bike.working?
end

class Bike
  bike = Bike.new
  bike.working?
  def working?
    true
  end
end
