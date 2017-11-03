distance_to_dock ="ollision imminent "

thrust_power = case distance_to_dock
	when "far away"
		100 
	when "coasting time "
		0 
	when "collision imminent "
		-100 
	else 
		-1 
	end 
puts thrust_power 

val = 10 
while val>5 do puts val; val-=1 end 
val1 =0 
begin 
	val1 +=1 
	puts val1 
end while val1<10

# for 


for i in [3,2,1]
	puts i 
end 

for i in (1..10 )
	puts i 
end 

[1,2,3].each do  # iterators and block
	puts " this is serenity ,please respond "
end 

10.upto(20) {|i| puts i}
20.downto(10) {|j|puts j }
 
 # redo keyword 

 i=0 
 while i<3 
 	print "please enter a positive numer"
 	input =gets.to_i  
 	redo if input<=0
 	i+=1 
 end 
 




