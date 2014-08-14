require './lib/errors'

module BikeContainer
  DEFAULT_CAPACITY = 10

# include BikeInclusionError

  def bikes
    @bikes ||= []
  end

  def capacity    
    @capacity ||= DEFAULT_CAPACITY
  end

  def capacity=(value)    
    @capacity = value
  end

  def bike_count
    bikes.count
  end

  def dock(bike)
    raise FullContainerError.new("this #{self.class} is full") if full?
    bikes << bike
  end

  def release(bike)
    raise EmptyContainerError.new("this #{self.class} is empty!") unless bikes.include?(bike)
    bikes.delete(bike)
  end

  def full?
    bike_count == capacity
  end

  def available_bikes
    bikes.reject {|bike| bike.broken?}
  end

end







