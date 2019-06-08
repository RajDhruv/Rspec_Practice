class SimpleClass
	attr_accessor :message
	def initialize
		puts "Creating an instance of SimpleClass"
		@message= "Hey There"
	end
	def update_message(message)
		@message=message
	end
end
