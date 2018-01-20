#http://codeforces.com/contest/570/problem/B

n, m = gets.split().map(&:to_i)

if n== 1 
  puts 1 

elsif 2*m <=n
  puts m+1 
else puts m-1 
end 
