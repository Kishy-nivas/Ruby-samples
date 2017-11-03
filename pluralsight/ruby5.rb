# conditional initializer 

class SpaceShip 
	def initialize(val)
		puts " initialized " + val 
		@val =val 
	end 
end 

ship ||= SpaceShip.new("ship") #won't work on booleans 
ship = SpaceShip.new("ship2") unless ship  # ship is assigned already , so no effect   

def engine(); return "engine ";end 
def emergency(); return "emergency";end 
engine_cut_out =0
if engine_cut_out.zero?
	puts engine or emergency 
end 

