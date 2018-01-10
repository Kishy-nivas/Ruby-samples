def solution(a,n)
  curr_max = 0 
  latest_update = 0 
  count = Array.new(n,0) 
  a.each do |i|
    if i== n+1 
      latest_update = curr_max 
    else 
      if count[i-1]<latest_update 
        count[i-1]= latest_update +1 
      else 
        count[i-1]+=1 
      end 

      curr_max = [count[i-1],curr_max].max 
    end 

  end 

  count.each_with_index do  |i,ind| 
  if i < latest_update 
    count[ind]= latest_update 
  end 
  count 
end 
p count 



end 

solution([3,4,4,6,1,4,4],5)









