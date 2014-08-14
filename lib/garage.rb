require_relative 'bike_container'

class Garage
	
include BikeContainer

	def initialize(options = {})
		self.capacity = options.fetch(:capacity, capacity)
	end

	alias_method :exit_dock, :dock

	def dock(bike)
		bike.fix! 
		exit_dock(bike)
	end

	# # this method 
	# def garage_dock(bike)
		
	# end

end