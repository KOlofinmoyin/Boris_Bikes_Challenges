require_relative 'bike'

class DockingStation
  def initialize
    @bike_capacity = []
  end

  def release_bike
    fail 'no bikes available' unless @bike_capacity
    @bike_capacity
  end

  def dock(bike)
    fail 'docking station at capacity.' unless @bike_capacity[19]
        @bike_capacity = bike
  end

  attr_reader :@bike_capacity
end
