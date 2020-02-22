
class DockingStation
 attr_reader :bike_container

 def initialize
   @bike_container = []
 end

    def dock(bike)
      fail 'Docking station full' if @bike_container.count >=20
      @bike_container << bike
      @bike_container[0]

    end


    def release_bike
      fail "There are no bikes available" if @bike_container.empty?
      @bike_container.pop
      end
end


class Bike
  def working?
    true
  end
end
