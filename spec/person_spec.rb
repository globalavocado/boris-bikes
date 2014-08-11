require 'person'

describe Person do

	let (:person){Person.new}
	it 'can hire a bike' do
		expect(person.hire_bike?).to eq "hired"
	end

	it "can return a bike" do
		expect(person.return_bike?).to eq "returned"
	end

	it "reports a problem" do
		expect(person.report?).to eq "reported"	
	end

end