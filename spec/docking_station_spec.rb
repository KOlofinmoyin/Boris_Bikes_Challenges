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

    it "raises an error when there are no bikes available" do
      expect { subject.release_bike }.to raise_error 'no bikes available'
    end
  end

  describe "#dock" do
    bike = Bike.new
    it'docks a bike.' do
      expect(subject.dock(bike)).to eq bike
    end
  end

  describe "#docked_bike" do
    it "shows bike that has been docked." do
        expect(subject.docked_bike).to eq @bike
    end
  end

end
