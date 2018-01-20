#http://codeforces.com/contest/467/B


n,m, k = gets.split.map(&:to_i)
arr = []
m.times do 
  arr += [gets.to_i]
end 
fedor = gets.to_i 
 ans =0   
arr.each  do |val| 
  bits= fedor ^ val             # to find  how much differences are there..... 
  if bits.to_s(2).count('1') <= k  # counting 1 shows how much the two bits differ ..... 
    ans +=1 
  end 
end 

p ans 