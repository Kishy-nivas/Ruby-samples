def solution(x,a)
  visited = {}
  steps = x 
  a.each_with_index do |i,ind |
    if !visited[i]
      visited[i] = true
      steps -=1         # moving closer to the target 
    end
    if steps == 0       # target reached 
      return ind 
    end 

  end
  -1              # unable to reach the target 


end 




p solution(5,[3])