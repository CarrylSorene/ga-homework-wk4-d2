class Van

  DEFAULT_CAPACITY = 5

  def initialize options = {} 
    @capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
    @bikes = []
  end

  def van
    raise 'Van is full' if full?
    @bikes << bike
  end

  def transport bike
    @bikes.collect bike
  end
 
  def full?
    bike_count == @capacity 
  end




  
end