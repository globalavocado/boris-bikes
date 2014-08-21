require './lib/van.rb'
require './lib/bike.rb'
# require "./spec/bike_container_spec"

describe Van do

	let(:van) {Van.new}
	let(:bike) {Bike.new}
	let(:broken_bike) {Bike.new.break!}
	let(:docking_station) {DockingStation.new}
	let(:garage) {Garage.new}

	it_behaves_like "a bike container"

	it "only picks up broken bikes from a docking station" do
	docking_station.dock(broken_bike)
	van.pickup_from_dock(docking_station)
	expect(van.broken_bikes.count).to eq 1
	expect(docking_station.broken_bikes.count).to eq 0
	end

	it "only drops off broken bikes at a garage" do
		van.dock(broken_bike)
		van.dropoff_to_garage(garage)
		expect(van.broken_bikes.count).to eq 0
		expect(garage.broken_bikes.count).to eq 1

	end

	it "only collects fixed bikes from the garage" do
		garage.dock(bike)
		van.pickup_from_garage(garage)
		expect(van.available_bikes.count).to eq 1
		expect(garage.available_bikes.count).to eq 0

	end

	it "releases fixed bikes to a docking station" do
		van.dock(bike)
		van.dropoff_to_station(docking_station)
		expect(van.available_bikes.count).to eq 0
		expect(docking_station.available_bikes.count).to eq 1
	end

end