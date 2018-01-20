str = gets.chomp!   

str_rev = str.reverse 
p str 
p str_rev 

difference = 0 

ind = 0 
str.size.times do 
  if str[ind]!= str_rev[ind]
    difference +=1 
  end 
  ind +=1 
end 

p difference 
puts difference == 2 ? "YES" : "NO"