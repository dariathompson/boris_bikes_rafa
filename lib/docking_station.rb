
class DockingStation
 attr_reader :bike

    def dock(bike)
      @bike = bike

    end

    def release_bike
      fail "There are no bikes available" unless @bike
      @bike
      end
end

class Bike
  def working?
    true
  end
end
