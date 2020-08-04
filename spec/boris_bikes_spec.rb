require 'boris_bikes'
describe DockingStation do
  it ' Expect docking_station to respond to release_bike' do
    expect(DockingStation.new).to respond_to(:release_bike)
  end
end
