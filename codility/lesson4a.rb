# check whether an array is a permutation or not .
# note summation check may break, for eg: this arr [4,0,4,2] = 10 , where (4*5)/2 =10 
def solution(a)
  given = {}
  max_val = a.max 
  a.each do |i| 
    given[i] = true           # duplicate values will not increase the size of given....
  end 

  given.size == max_val  && a.size == max_val ? 1 :0 


end

a = [1]
p solution(a)




