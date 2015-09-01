class DockingStation

  DEFAULT_CAPACITY = 5 #for all docking stations

  def initialize options = {} #refers to hash (knows it's a hash when it sees what we've put with the instantation and also because we've given it an empty hash) - name itself could be anything
    #@capacity = options[:capacity] #normal way of accessing things inside of a hash
    @capacity = options.fetch(:capacity, DEFAULT_CAPACITY) #cooler way
    @bikes = []
  end

  def bike_count
    @bikes.count
  end

  def dock bike
    raise 'Station is full' if full? #guard clause 
    @bikes << bike
  end

  def release bike
    @bikes.delete bike
  end

  def full?
    bike_count == @capacity 
  end

  def available_bikes
    @bikes.reject {|bike| bike.broken?}
  end

end