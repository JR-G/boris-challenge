require 'docking_station'

describe DockingStation do
  
  context 'when release_bike is called' do
    it { is_expected.to respond_to :release_bike }
  end

  it 'returns a working bike' do
    bike = Bike.new
    expect(bike).to be_working
  end
  
  context 'when dock_bike is passed a value' do
    it { is_expected.to respond_to(:dock).with(1).argument }
  end

  context 'when stored_bikes is called' do
    it { is_expected.to respond_to :stored_bikes }
  end

  it 'raises an error when no bikes are available' do
    expect { subject.release_bike }.to raise_error "No bikes are docked here"
  end

  it 'raises an error when docking station is full' do
    bike = Bike.new
    expect { subject.dock(bike) }.to raise_error "Capacity at this docking station is full"
  end

end
