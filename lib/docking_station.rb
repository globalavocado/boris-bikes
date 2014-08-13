require_relative 'bike_container'

class DockingStation
	DEFAULT_CAPACITY = 10

include BikeContainer

	def initialize(options = {})
		self.capacity = options.fetch(:capacity, capacity)
	end

end