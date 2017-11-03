lander_count =11 
if lander_count >10            # conditional stmt 
	puts "landing probe "
else 
	puts "waiting for probes "
end 


message = if lander_count > 10          # another simple way 
	"Launching probe "
else
	"waiting for probes to return "
end 

puts message 

# short hand 



a=b=10 
puts a,b 
a+=10  