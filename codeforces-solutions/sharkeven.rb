=begin 

Print the maximum possible even sum that can be obtained if we use some of the given integers.
Examples
Input

3
1 2 3

Output

6

Input

5
999999999 999999999 999999999 999999999 999999999

Output

3999999996

=end 


def sum_all(arr)
	sum =0 
	arr.each do |i|
		sum+=i 
	end
	return sum 
end 

n = gets.chomp  
arr = gets.split.map(&:to_i) 
odd_count =0 
even_count =0 
arr.each do|i|
	if i.even? 
		even_count +=1 
	else 
		odd_count +=1 
	end
end 
sum=0 

if odd_count.even? 
	puts sum_all(arr)
else 
	odd_count -=1 
arr.sort!.reverse! 

sum =0 
arr.each do |i|
	if i.odd? and odd_count>0 
		sum+=i 
		odd_count -=1 
	elsif i.even?
		sum+=i 
	end
end
puts sum  
end
		
	
	