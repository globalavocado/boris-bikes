require './lib/garage'
require './lib/bike'
require './spec/bike_container_spec'

describe Garage do

	let(:van) {Van.new}
	let(:bike) {Bike.new.break!}
	let(:bike2) {Bike.new.break!}
	let(:garage) {Garage.new}

	it_behaves_like "a bike container"

	
	it 'should fix broken bikes' do
		van.dock(bike)
		van.dock(bike2)		
		van.dropoff_to_garage(garage)
		expect(garage.available_bikes.count).to eq 2
		expect(van.available_bikes.count).to eq 0
	end


end
