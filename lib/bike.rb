class Bike

  def initialize
    @broken = false #sets default/starting value
    #fix #can refactor with this to call value of fix method, but sometimes making code DRYer like this can make it harder to read
  end

  def broken?
    @broken 
  end

  def break 
    @broken = true #this value returned to spec doc only when it calls on break method
  end

  def fix
    @broken = false
  end

end