def solution(a)
  i=a.size-1             # traverse the array from the end 
  ones = 0 
  zero_ones = 0 
  a.size.times do 
    if a[i]== 1 
      ones += 1 
    else 
      zero_ones += ones 
    end 
    i -= 1
  end 
  zero_ones > 1000000000 ? -1 : zero_ones 
end 

p solution([0,1,0,1,1])


