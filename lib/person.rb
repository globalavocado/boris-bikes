class Person
	DEFAULT_CAPACITY = 1

def initialize 
	@hasbike = nil
end

	def hasbike
		!@hasbike.nil?
	end

	def hires(bike)
		@hasbike = bike
	end 

	def returns!
		@hasbike = nil
	end

	def breaks_bike
		@hasbike.break!
	end

end