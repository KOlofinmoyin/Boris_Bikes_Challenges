require_relative 'bike'

class DockingStation
  def release_bike
    fail 'no bikes available' unless @docked_bike
    @docked_bike
  end

  def dock(bike)
    @docked_bike = bike
  end

  attr_reader :docked_bike
end
