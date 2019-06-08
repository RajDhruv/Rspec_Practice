# to run a particular test case execute rspec --tag TagName . For example if I want to execute only slow test i will write ' rspec --tag slow ' in terminal.

describe "How to tag tests and run specifically a particular testcase" do
	it "is a slow test",:slow => true do
		sleep 5
		puts "This is slow test"
	end
	it "is a fast test", :fast =>true do
		puts "This is fast test"
	end
end

