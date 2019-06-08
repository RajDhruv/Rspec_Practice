# When you are writing unit tests, it is often convenient to run setup and teardown code before and after your tests. Setup code is the code that configures or “sets up” conditions for a test. Teardown code does the cleanup, it makes sure that the environment is in a consistent state for subsequent tests.

# Generally speaking, your tests should be independent of each other. When you run an entire suite of tests and one of them fails, you want to have confidence that it failed because the code that it is testing has a bug, not because the previous test left the environment in an inconsistent state.

# The most common hooks used in RSpec are before and after hooks.

# The before(:each) method is where we define the setup code. When you pass the :each argument, you are instructing the before method to run before each example in your Example Group i.e. the two it blocks inside the describe block in the code above.

# In the line: @simple_class = SimpleClass.new, we are creating a new instance of the SimpleClass class and assigning it to an instance variable of an object. What object you might be wondering? RSpec creates a special class behind the scenes in the scope of the describe block. This allows you to assign values to instance variables of this class, that you can access within the it blocks in your Examples. This also makes it easy to write cleaner code in our tests. If each test (Example) needs an instance of SimpleClass, we can put that code in the before hook and not have to add it to each example.

require "./lib/hook_example"
describe "When testing SimpleClass" do
	before(:each) do
		@simple_class=SimpleClass.new
	end
	before(:all) do
		puts "Will run before all test cases and execution Block."
	end
	after(:each) do
		puts "This will run after each test case"
	end
	after(:all) do
		puts "This will run after all test case and code blocks execution."
	end

	it 'should have an initial message' do
		expect(@simple_class).to_not be nil
		@simple_class.message='Something else'
	end
	it 'should be able to change its message' do
		@simple_class.update_message('new message')
		expect(@simple_class.message).to_not be 'Hey There'
	end
end
	
