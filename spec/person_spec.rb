require 'person'
require 'bike'

describe Person do

	let (:person){Person.new} 
	let (:bike){Bike.new}

	it 'is created without a bike' do
		expect(person.hasbike).to eq false
	end

	it "can receive a bike" do
		person.hires(bike)
		expect(person.hasbike).to eq true
	end


	it 'hires a bike' do
		person.hires(bike)
		expect(person.hasbike).to eq true
	end

	it "returns a bike" do
		person.hires(bike)
		person.returns!
		expect(person.hasbike).to eq false
	end

	it 'can break a bike' do
		person.hires(bike)
		person.breaks_bike
		expect(bike.broken?).to eq true
	end

end