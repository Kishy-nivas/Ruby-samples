# find the odd occurence in the array and return it. 

def solution(a)
  # write your code in Ruby 2.2
  if a.size ==1 
    return a[0]
  end 
  a.sort! 
  count = 0 
  for i in (0..a.size-2) 
    if a[i]==a[i+1] 
      count+=1 
    elsif a[i]!=a[i+1] and (count %2 !=1) or (i == a.size-2 )    # odd occurence detected 
      return a[i+1] if i==a.size-2 
      return a[i] 
    else 
      count = 0                      # new set of identical elements 
    end 
  end 
  
end


require "minitest/autorun"

class Tests < Minitest::Test 
  def test_odd 
    assert_equal 3 ,solution([1,2,2,3,1])
  end 

  def test_even 
    assert_equal 4, solution([1,2,3,4,3,2,1,])
  end 

  def test_begin 
    assert_equal 1, solution([1,2,2,3,3,4,4,4,4])
  end 


  def test_last
    assert_equal 3,solution([1,2,2,1,3])
  end 

  def test_mid 
    assert_equal 5,solution([1,1,5,2,2])
  end 
end 