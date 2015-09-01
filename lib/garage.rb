class Garage

DEFAULT_CAPACITY = 10

  def initialize options = {} 
    @capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
    @bikes = []
  end

  def bike_count
    @bikes.count
  end

  def van bike
    raise 'Van is full' if full?
    @bikes << bike
  end

  def accept bike
    @bikes << bike
  end

end
