require 'docking_station'
describe DockingStation do
  it { is_expected.to respond_to(:release_bike) }

  it "releases working bike" do
    bike = Bike.new
    expect(bike.working?).to eq true
  end

  it "docks a bike in the docking station" do
    bike = Bike.new
    station = DockingStation.new
    expect(station.dock(bike)).to eq bike
  end

  it "raises an error" do
    expect { raise StandardError }.to raise_error
  end
end
