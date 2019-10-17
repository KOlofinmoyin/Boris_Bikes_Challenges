require_relative 'bike'

class DockingStation
DEFAULT_CAPACITY = 20

  def initialize
    @docked_bike = []
  end

  attr_reader :docked_bike

  def release_bike
    fail 'no bikes available' if @docked_bike.empty?
    @docked_bike.pop
  end

  def dock(bike)
  fail 'docking station at capacity.' if @docked_bike.count >= DEFAULT_CAPACITY
    @docked_bike << bike
  end


end
