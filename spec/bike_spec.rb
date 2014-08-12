# link to bike class
require 'bike'

# describing functionality of a specific class, that of bike
describe Bike do

it "should not be broken after we create it" do
		bike = Bike.new
		# expect is a method, the_bike is an instance
		# be_broken is also a method
	expect(bike).not_to be_broken
	end
end