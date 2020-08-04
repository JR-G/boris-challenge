require 'boris_bikes'
describe DockingStation do
  it ' Expect DockingStation instances to respond to release_bike' do
    expect(DockingStation.new).to respond_to(:release_bike)
  end
  it 'Expect true if bike is working' do
    expect(DockingStation.new.release_bike.working?).to eq true
  end
  it 'Expect DockingStation instances to respond to dock_bike' do
    expect(DockingStation.new).to respond_to(:dock_bike)
  end
  it 'Expect stored_bikes instance variable to return the docked bikes' do
  expect(DockingStation.new).to respond_to(:stored_bikes)
end
end
