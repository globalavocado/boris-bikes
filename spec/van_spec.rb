require './lib/van.rb'
# require './lib/bike.rb'
require "bike_container_spec"

describe Van do

	it_behaves_like "a bike container"

	# it "only picks up broken bikes" do
	# broken_bike = Bike.new
	# expect(broken_bike.pickup).to eq true
	# end

	# it "only distributes fixed bikes" do
	# working_bike = Bike.new
	# expect(working_bike.pickup).to eq true
	# end


end