#Rspec Subject enables us to write short and clean code. In exmple 3 I have moved the instantiation part of Person Class in describe block and only the test cases are being tested.

require './lib/person'
describe "When testing Person Class" do
	it 'create a new person with a first and last name' do
		person=Person.new('Dhruv','Raj')
		expect(person.first_name).to eq "Dhruv"
		expect(person.last_name).to eq "Raj"
	end
	it 'another syntax to test attributes' do
		person=Person.new('Dhruv','Raj')
		expect(person).to have_attributes(first_name: "Dhruv")
		expect(person).to have_attributes(last_name: "Raj")
	end
end

describe Person.new "Dhruv","Raj" do
	it { is_expected.to have_attributes(first_name:"Dhruv")}
	it { is_expected.to have_attributes(last_name:"Raj")}
end