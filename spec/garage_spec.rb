require './lib/garage'
require './lib/bike'

describe Garage do

let (:garage) {Garage.new}

	it 'should be able to fix bikes once docked at the garage' do
		broken_bike = Bike.new
		broken_bike.break!
		garage.dock(broken_bike)
		expect(broken_bike.broken?).to eq false 
	end

end

	# it 'accepts broken bikes from the van' do
	# 	broken_bike = Bike.new.break!
	# 	expect  
	# end
