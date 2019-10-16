require './lib/docking_station.rb'
require 'bike'

describe DockingStation do
  it {is_expected.to respond_to :release_bike}

  describe "#releases_bike" do
    it('releases a working Bike') do
      expect(subject.release_bike).to be_working
    end
  end
end
