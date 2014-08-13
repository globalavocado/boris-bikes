require_relative 'bike_container'

class Van
	DEFAULT_CAPACITY = 10

include BikeContainer

	def initialize(options = {})
		self.capacity = options.fetch(:capacity, capacity)
	end

	def pickup
		true
	end
	

end