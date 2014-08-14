require './lib/bike'
require './lib/bike_container'

shared_examples "a bike container" do

	let(:bike) {Bike.new}
	let(:holder) {described_class.new}

	def fill_holder(holder)
		holder.capacity.times { holder.dock(Bike.new)}
	end

	it "should accept a bike" do
		# expect dock to have 0 bikes
		expect(holder.bike_count).to eq(0)
		# docking a bike to the holder
		holder.dock(bike)
		# now it has one bike
		expect(holder.bike_count).to eq(1)
	end

	it "should release a bike" do
		holder.dock(bike)
		holder.release(bike)
		expect(holder.bike_count).to eq(0)
	end

	it "should know when it's full" do
		expect(holder).not_to be_full
		fill_holder(holder)
		expect(holder).to be_full
	end

	it "should not accept a bike if it's full" do
		fill_holder(holder)
		expect(lambda{holder.dock(bike)}).to raise_error(RuntimeError)
	end

	context 'when renting bikes'
	it "should provide the list of available bikes" do
		working_bike, broken_bike = Bike.new, Bike.new
		broken_bike.break!
		holder.dock(working_bike)
		holder.dock(broken_bike)
		expect(holder.available_bikes).to eq([working_bike])
	end

	it "should allow setting default capacity on initialising" do
		expect(holder.capacity).to eq(10)
	end
end