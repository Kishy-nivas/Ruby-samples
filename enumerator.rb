# let's create an enumerator for fibonacci series 

@fib = Enumerator.new do |y| 
	a=0 
	b=1 
	loop do 
		y<<a 
		a,b=b,a+b
	end 
end 


loop do 
	val = @fib.next             
	if val <25 then 
		puts val  # => 0,1,1,2,3,5,8,13,21 
	else 
		break 
	end 
end 
