def solution(a)
  min_val = 1/0.0       #infinity 
  low_sum = 0 
  high_sum = a.reduce(:+)
  a.each_index do |i|
    break if i == a.size-1 
    low_sum += a[i]
    high_sum -=a[i]
    difference  =(high_sum-low_sum).abs 
    if difference < min_val 
      min_val = difference 
    end 

  end 
  min_val

end 



p solution([-1000,1000])
require "minitest/autorun"
class Tests < Minitest::Test 
  def test_empty 
  end 

  def test_odd 
  end 

  def test_even 
  end 
end 