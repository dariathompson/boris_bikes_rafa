require 'docking_station.rb'
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
    expect { subject.release_bike }.to raise_error "There are no bikes available"
  end
  describe '#dock' do
    it 'raises an error when full' do
      subject.dock(Bike.new)
      expect { subject.dock Bike.new }.to raise_error 'Docking station full'
    end
  end
end
