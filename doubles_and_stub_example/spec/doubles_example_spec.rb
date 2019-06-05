#Doubles also called as mocks is an object that stands in for another object(probably of a class that doesn't exists). Doubles help in testing the methods of a particular class only so that if there is an issue to be encountered it could be spotted at its location only and remove the dilema that the error might be in the child child class.
#Stub like doubles is a method that stands in for a method that doesn't exist. Here in the example Student Class doesn't exist and so does it's method but allow() method enables us to provide name attribute to the object (double object) of student class.
require "./lib/class_room"
describe "testing rspec doubles with ClassRoom class" do
	it"the list_student_name method should work" do
		student1=double('student')
		student2=double('student')
		allow(student1).to receive(:name){'Dhruv Raj'}
		allow(student2).to receive(:name){'Ayushee'}
		cr= ClassRoom.new [student1,student2]
		expect(cr.list_students_name).to eq('Dhruv Raj,Ayushee')
	end
end	
