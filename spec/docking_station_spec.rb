require './lib/docking_station'

describe DockingStation do

	let(:bike) {Bike.new}
	let(:station) {DockingStation.new(:capacity => 20)}

	it "should accept a bike" do
		# expect dock to have 0 bikes
		expect(station.bike_count).to eq(0)
		# docking a bike to the station
		station.dock(bike)
		# now it has one bike
		expect(station.bike_count).to eq(1)
	end

	it "should release a bike" do
		station.dock(bike)
		station.release(bike)
		expect(station.bike_count).to eq(0)
	end

	it "should know when it's full" do
		expect(station).not_to be_full
		20.times {station.dock (Bike.new)}
		expect(station).to be_full
	end
end