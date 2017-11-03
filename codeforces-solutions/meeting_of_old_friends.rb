=begin 
Input

The only line of the input contains integers l1, r1, l2, r2 and k (1 ≤ l1, r1, l2, r2, k ≤ 1018, l1 ≤ r1, l2 ≤ r2), providing the segments of time for Sonya and Filya and the moment of time when Sonya prinks.
Output

Print one integer — the number of minutes Sonya and Filya will be able to spend together.
Examples
Input

1 10 9 20 1

Output

2

Input

1 100 50 200 75

Output

50


=end 




a,b,c,d,k = gets.split(/\s/).map(&:to_i)
l,r = [a,c].max,[b,d].min  
ans = 0 
if l>r 
	puts ans 
	else 
		ans = r-l +1
		if k>=l and k<=r 
			ans=ans -1 
		end
		puts ans 
	end 

