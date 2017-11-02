class Student
	@@total_students =0  
	def initialize(name,age)
		@s_name = name 
		@age = age 
		@@total_students +=1
	end 
	def get_count()
		return @@total_students 
	end 

	def get_name() 
		return @s_name 
	end
end 

class Teacher < Student 
	def initialize(name,age)
		super(name,age)
	end
end 



s1 =Student.new("Kishore",21)
print (s1.get_count()) 
puts "" 
print (s1.get_name())
puts "" 
t1 = Teacher.new("Sindhu",23)
print (t1.get_name())
puts ""
print (t1.get_count())
	