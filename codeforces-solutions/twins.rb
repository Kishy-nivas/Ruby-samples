=begin 

The first line contains integer n (1 ≤ n ≤ 100) — the number of coins. The second line contains a sequence of n integers a1, a2, ..., an (1 ≤ ai ≤ 100) — the coins' values. All numbers are separated with spaces.
Output

In the single line print the single number — the minimum needed number of coins.
Examples
Input

2
3 3

Output

2

Input

3
2 1 2

Output

2


=end 



n =gets.chomp.to_i   
a= gets.chomp 
arr = a.split(/\s/).map(&:to_i)
arr.sort!.reverse! 
sum1 =0 
count  =0 
check =0 
arr.each{|x| check+=x } 
 
check =check/2 
arr.each do |i| 
	sum1+=i 
	count+=1
	if sum1>check
		break 
	end
end
puts count 