require './lib/docking_station'

describe DockingStation do

	it "should accept a bike" do
		bike = Bike.new
		station = DockingStation.new
		# expect dock to have 0 bikes
		expect(station.bike_count).to eq(0)
		# docking a bike to the station
		station.dock(bike)
		# now it has one bike
		expect(station.bike_count).to eq(1)
	end
end