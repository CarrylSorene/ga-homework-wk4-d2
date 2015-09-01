class Van

  DEFAULT_CAPACITY = 5

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

  def transport bike
    @bikes << bike
  end

  def release bike
    @bikes.delete bike
  end

  # def broken_bikes
  #   @bikes.select {|bike| bike.broken?}
  # end

  def full?
    bike_count == @capacity 
  end

end