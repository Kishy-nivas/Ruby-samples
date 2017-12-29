def fibonnaci_up_to(max) 
  first,second =0, 1 
  while first<max do 
    yield(first)
    first,second = second ,first+second 
  end 

end 
 
f= File.open("sample.txt")
f.each do |line|
  fibonnaci_up_to (line.to_i){|i| print(i, " ")} 
  puts 
end 
f.close
