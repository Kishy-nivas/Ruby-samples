def solution(arr) 
  n = arr.size + 1
  if arr.empty? 
    return 1 
  end 
  total_sum = arr.reduce(:+)
  n*(n+1)/2 - total_sum 
end 



require "minitest/autorun"
class Tests < Minitest::Test
  def test_find_first
    assert_equal 1, solution([2,3,4,5])
  end 

  def test_find_last 
    assert_equal 5, solution([1,2,3,4])
  end 

  def test_find_no_missing
    assert_equal 0, solution([1,2,3,4,5]) 
  end 


  def test_find_with_one_element
    assert_equal 1, solution([2])
  end

  def test_find_empty_arr
    assert_equal 0, solution([])

  end 

end 
