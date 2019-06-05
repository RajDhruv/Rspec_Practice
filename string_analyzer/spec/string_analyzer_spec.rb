require "./lib/string_analyzer"

describe StringAnalyzer do
	context "When testing StringAnalyzer class" do
		it "should return true if string contain vowels" do
			sa=StringAnalyzer.new
			expect(sa.has_vowels? 'uuuu').to be true
		end
		it "should return false for string without vowels" do
			sa=StringAnalyzer.new
			expect(sa.has_vowels? 'hjyty').to be false
		end
	end
end