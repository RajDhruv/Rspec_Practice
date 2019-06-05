require './lib/hello_world'

describe "HelloWorld" do
	context "When testing HelloWorld class" do
		it "The say_hello method should return 'Hello World'" do
			hw=HelloWorld.new
			expect(hw.say_hello).to eq "Hello World"
		end
	end
end