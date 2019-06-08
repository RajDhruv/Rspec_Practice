require "./lib/dog_class"
describe "When testing DogClass" do
	def create_and_walk_dog(good_or_bad)
		dog=Dog.new good_or_bad
		dog.walk_dog
		return dog
	end
	it "should check that dog is good" do
		dog=create_and_walk_dog(true)
		expect(dog.good_dog).to be true
		expect(dog.walk_dog).to be true
	end
	it "should check that dog is bad" do
		dog=create_and_walk_dog false
		expect(dog.good_dog).to be false
		expect(dog.walk_dog).to be true
	end
end


