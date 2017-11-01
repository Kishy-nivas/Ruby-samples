class Spaceship
	attr_accessor:destination # public access 
	attr_reader :name 
	attr_writer:age 
	def launch(destination,name,age)
		@destination= destination 
		@name =name 
		@age= age 
	end 

	def print() 
		puts @destination,@age,@name 
	end
end 
ship =Spaceship.new 
ship.launch("Earth","ship1",2)
puts ship.print 
puts ship.destination
ship.age =3
puts ship.print 

