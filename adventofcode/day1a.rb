f= File.open('day1.txt')
str= ""
f.each_line do |line| 
  str+=line;
end 

puts str.count("(")-str.count(")")
