# link to bike class
require './lib/bike'

# describing functionality of a specific class, that of bike
describe Bike do

	let(:bike){Bike.new}

it "should not be broken after we create it" do
		# expect is a method, the_bike is an instance
		# be_broken is also a method
	expect(bike).not_to be_broken
end

it "should be able to break" do
		bike.break!
	expect(bike).to be_broken
end

it "should be able to get fixed" do
		bike.break!
		bike.fix!
	expect(bike).not_to be_broken
end

end
