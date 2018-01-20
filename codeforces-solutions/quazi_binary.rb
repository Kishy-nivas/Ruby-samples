#http://codeforces.com/problemset/problem/538/B

n = gets.to_i  

arr = Array.new(9,0) 
k = 1 
largest = 0 
while(n!=0) do 
  individual = n%10 
  if individual > largest 
    largest = individual 
  end 

  ind = 0 
  individual.times do
    arr[ind] += k 
    ind +=1  
  end

  k= k*10 
  n = n/10
end 


ind = 0 
puts largest 
arr.select! do |i| 
  i>0 
end 

puts arr.join(' ')
