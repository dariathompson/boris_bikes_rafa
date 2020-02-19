
class DockingStation
 attr_reader :bike
    def dock(bike)
      @bike = bike

    end

    def release_bike
       Bike.new
    end
end

class Bike
  def working?
    true
  end
end


bike = Bike.new
station = DockingStation.new
p station.dock(bike)
p station.bike
