require_relative 'bike'

class DockingStation
  def release_bike
    Bike.new
  end

  def dock(bike)
    @docked_bike = bike
  end

  attr_reader :docked_bike
end
