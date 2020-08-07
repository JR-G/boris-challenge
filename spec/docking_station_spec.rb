require 'docking_station'

describe DockingStation do

  subject { DockingStation.new }
    let(:bike) { Bike.new }

  it { is_expected.to respond_to :release_bike }
  it { is_expected.to respond_to(:dock).with(1).argument }
  it { is_expected.to respond_to :bikes }

  it 'has a default capacity' do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end

  describe 'initialization' do
    it 'defaults capacity' do
      described_class::DEFAULT_CAPACITY.times do
        subject.dock(bike)
      end
      expect{ subject.dock(bike) }.to raise_error "Docking station full"
    end 

    it 'has a variable capacity' do
      docking_station = DockingStation.new(50)
      50.times { docking_station.dock Bike.new }
      expect{ docking_station.dock Bike.new}.to raise_error "Docking station full"
    end
  end
  
  it 'releases a working bike' do
    bike = Bike.new
    expect(bike).to be_working
  end

  describe '#release_bike' do
    it 'releases a bike' do
        bike = Bike.new
        subject.dock(bike)
        expect(subject.release_bike).to eq bike
    end

    it 'raises an error when no bikes are available' do
      expect { subject.release_bike }.to raise_error "No bikes available"
    end

  end

  describe '#dock' do
    it 'returns a docked bike' do
      bike = Bike.new
      expect(subject.dock(bike)).to eq [bike]
    end

    it 'raises an error when full' do
      subject.capacity.times {subject.dock Bike.new}
      expect { subject.dock Bike.new }.to raise_error "Docking station full"
    end
  end
end
