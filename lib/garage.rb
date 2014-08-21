require_relative 'bike_container'

class Garage
	
include BikeContainer

	def initialize(options = {})
		self.capacity = options.fetch(:capacity, capacity)
	end


	def dock(bike)
		super
		bike.fix!
	end

	# # this method 
	# def garage_dock(bike)
		
	# end
	# alias_method :collect, :dock

end