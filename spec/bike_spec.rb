require 'boris_bikes'
describe Bike do
  it 'expects new instances of Bike to respond to the method "working?"' do
    expect(Bike.new).to respond_to(:working?)
  end
end