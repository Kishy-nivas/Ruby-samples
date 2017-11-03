=begin
Add a method to_fahrenheit() to the Celsius class that converts the Celsius temperature to Fahrenheit. 
The formula to convert Celsius to Fahrenheit is the temperature in Celsius times 1.8 plus 32.
=end

class Celsius
	def initialize(temperature)
		@temperature =temperature 
	end 


	def to_fahrenheit() 
		return (@temperature *1.8) +32
	end 
end 

c = Celsius.new(10)
puts c.to_fahrenheit