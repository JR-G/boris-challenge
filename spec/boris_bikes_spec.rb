require 'boris_bikes'
describe DockingStation do
  it ' Expect DockingStation instances to respond to release_bike' do
    expect(DockingStation.new).to respond_to(:release_bike)
  end
  it 'Check if the bike is working' do
    expect(DockingStation.new.release_bike.working?).to eq true
  end
  end
