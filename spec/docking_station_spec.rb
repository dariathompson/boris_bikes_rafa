require 'docking_station'
describe DockingStation do
  it { is_expected.to respond_to(:release_bike) }

  it "gets a bike and bike is working" do
    station = DockingStation.new
    bike = station.release_bike
    expect(bike.working?).to eq true
  end
   it "docks a bike in the docking station" do
     bike = Bike.new
     station = DockingStation.new
     expect(station.dock(bike)).to eq bike
   end
end
