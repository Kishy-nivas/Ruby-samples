def solution(arr, k)
  if arr.empty?
    return arr 
  end 
  k.times do 
    last_value = arr.pop 
    arr.insert(0,last_value) 
  end 
  arr


end 


require "minitest/autorun"

class Tests < Minitest::Test 
  def test_single_val
    assert_equal [1], solution([1],2)
  end 

  def test_odd_k_val 
    assert_equal [9,7,6,3,8],solution([3,8,9,7,6],3)
  end 
end 
