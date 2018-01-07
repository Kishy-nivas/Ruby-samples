def solution (n) 
  bin_val = '%b' %n  # binary conversion 
  zeroes = bin_val.split('1')  # split the zeroe into arrays 
  zeroes.pop if n%2 == 0        # no one's at the end for even numbers 
  return 0 if zeroes.empty? 
  zeroes.max.size 
end 


require "minitest/autorun"

class Tests < MiniTest::Test
  def test_example_input 
    assert_equal 5, solution(1041)
  end 

  def test_check_even 
    assert_equal 1, solution(20)
  end 
end 


