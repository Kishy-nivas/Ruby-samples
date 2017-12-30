n= gets.to_i 
list = gets.split(" ").map(&:to_i)

i= 0 
available_police = 0 
crime =0 
n.times do 
  if list[i] > 0 
    available_police+=list[i]

  elsif list[i]<0 and available_police>0 
    available_police+=list[i]
  else 
    crime +=1 
  end 
  i+=1 


end 
puts crime 