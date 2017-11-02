module Math 
	def square(num)
		return num*num 
	end 

	def mod(num1,num2 )
		return num1%num2 
	end 
end 

class Calculators 
	include Math 
	def square1(num)
		return square(num)
	end 

	def mod1(num1,num2 )
		return mod(num1,num2)
	end 
end 

c= Calculators.new 
puts c.square1(5)
puts c.mod1(17,2)
										

