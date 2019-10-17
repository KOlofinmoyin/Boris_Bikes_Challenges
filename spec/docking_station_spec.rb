require 'docking_station'
require 'bike'

describe DockingStation do
  it {is_expected.to respond_to :release_bike}

  describe "#releases_bike" do
    it('releases a working Bike') do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to be_working
    end

    it 'raises an error when there are no bikes available' do
      expect { subject.release_bike }.to raise_error 'no bikes available'
    end
  end

  describe "#dock" do
    it 'docks a bike.' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.docked_bike[0]).to eq bike
    end

    it 'each docking station accepts 20 bikes' do
      20.times{ subject.dock(Bike.new) }
      expect { subject.dock(Bike.new) }.to raise_error 'docking station at capacity.'
    end
end

  describe "#docked_bike" do
    it 'shows bike that has been docked.' do
        bike1 = Bike.new
        bike2 = Bike.new
        subject.dock(bike1)
        subject.dock(bike2)
        expect(subject.docked_bike).to eq [bike1, bike2]
    end
  end

end
