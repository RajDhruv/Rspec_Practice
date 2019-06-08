class Dog
	attr_accessor :good_dog,:has_been_walked
	def initialize(good_or_not)
		@good_dog=good_or_not
	end
	def walk_dog
		@has_been_walked=true
	end
end
