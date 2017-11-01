puts " hello world ! "

lander_count =10  # lower case 
lander_no_coubt =nil # no value 
def double(val)
	val *2
end 

def double2(val);val*2;end  # another way 

puts double("abc")



puts double2(4)
outer_count =10  #globals 
def report 
	outer_count =5 # local , and have no effect on changing 
	puts outer_count 
end 

report  

puts outer_count 


$log_level ="debug" # definig a global value 

def check_global();puts $log_level;end; 

check_global 


