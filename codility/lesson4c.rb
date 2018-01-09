def solution(a)
  occurences = Array.new(a.size+1,false)       #size + 1 to get tha smallest value if all the elements are present 

  occurences[0] = true                         # should be greater than zero  
  a.each_with_index do |i| 
    if i>=1
      occurences[i] = true
    end   
  end 

  occurences.each_with_index do |i,ind |           
    if i == false 
      return ind                            
    end 
  end 
  a.size + 1

end 

p solution([-1])


