require "bike"


describe Bike do
	let(:a_bike){Bike.new}


	it "is working" do
		expect(a_bike.working?).to eq true
	end

	it "is broken" do	
		a_bike.break! 
		expect(a_bike.working?).to eq false
	end

	it 'can be fixed' do
		a_bike.break!
		a_bike.fix!
		expect(a_bike.working?).to eq true
	end
end

