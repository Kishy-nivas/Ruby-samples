f= File.open('day2a.txt')
str= ""
f.each_line do |line| 
  str+=line;
end 

steps = 0 
ans = -1 
ind =0 
str.each_char do |i| 
  if i=="("
    steps+=1 
  else 
    steps-=1 
  end 

  if steps ==-1 
    ans =ind 
    break 
  end 
  ind +=1 
end 

puts ans+1 



