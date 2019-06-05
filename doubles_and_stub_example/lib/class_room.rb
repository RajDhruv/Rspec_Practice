class ClassRoom
	def initialize(students)
		@students=students
	end
	def list_students_name
		@students.map(&:name).join(',')
	end
end
