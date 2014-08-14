class BikeInclusionError < RuntimeError
  def initialize(message)
		super(message)
	end
end

class EmptyContainerError < RuntimeError
	def initialize(message)
		super(message)
	end
end

class FullContainerError < RuntimeError
	def initialize(message)
		super(message)
	end
end
