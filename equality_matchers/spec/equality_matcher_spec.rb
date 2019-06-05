describe "Rspec Equality Matcher examples" do
	context "To test different Rspec Equality Matchers" do
		it "test eq matcher" do
	       	a="Test String"
			b=a
			expect(a).to eq b
		end
		it "test eql matcher" do
			a="Test String"
			b=a
			expect(a).to eql b
		end
		it "test 'be' matcher" do
			a="Test String"
			b=a
			expect(a).to be b
		end
		it "test equal matcher" do
			a="Test String"
			b=a
			expect(a).to equal b
		end
		it "Match All Numeric Matchers" do
			a=1
			b=2
			c=3
			d='test string'
			expect(b).to be > a
			expect(a).to be >=a
			expect(a).to be < b
			expect(b).to be <=b
			expect(c).to be_between(1,3).inclusive
			expect(b).to be_between(1,3).exclusive
			expect(d).to match /TEST/i
		end
	end
end
