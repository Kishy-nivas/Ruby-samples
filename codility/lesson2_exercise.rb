# Array exercises 

def reverse_arr(arr)

  for i in (0..(arr.size-1)/2 )
    k = arr.size-i-1                # get the last element 
    arr[i], arr[k] = arr[k],arr[i]
  end  
  arr 
end

arr = [1,2,3,4,5]
arr = reverse_arr(arr)
puts arr 


require "minitest/autorun"

class Tests < Minitest::Test 
  def test_odd_array 
    assert_equal [5,4,3,2,1], reverse_arr([1,2,3,4,5])
  end 

  def test_even_array 
    assert_equal [6,5,4,3,2,1] , reverse_arr([1,2,3,4,5,6]) 
  end 

  def test_single_element 
    assert_equal [1], reverse_arr([1])
  end 

  def test_empty_arr 
    assert_equal [] , reverse_arr([])
  end 
end 

