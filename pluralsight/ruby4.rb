# if and case 
# looping 
# exception handling 

def launch();puts"launch";end 
def wait();puts"wait";end 
can_launch =1 
if can_launch
	launch 
else 
	wait 
end 
lander_cnt = 11 
message = if lander_cnt > 10 then "launching " else "wait" end 
puts message

#unless 
fuel_level = 15
unless  fuel_level > 25
	launch 
	fuel_level +=1 
end 

