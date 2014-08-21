require_relative 'bike_container'


class Van
	DEFAULT_CAPACITY = 10

include BikeContainer

	def initialize(options = {})
		self.capacity = options.fetch(:capacity, capacity)
	end

	def pickup_from_dock(station)
		station.broken_bikes.each do |bike| 
			dock(bike)
			station.release(bike)
		end
	end

	def pickup_from_garage(garage)
		garage.available_bikes.each do |bike|
			dock(bike)
			garage.release(bike)
		end
	end

	def dropoff_to_garage(garage)
			broken_bikes.each do |bike|
				garage.dock(bike)
				release(bike)
		end
	end

	def dropoff_to_station(station)
			available_bikes.each do |bike|
				station.dock(bike)
				release(bike)
		end
	end
end