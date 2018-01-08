=begin  Write a function:

    int solution(int X, int Y, int D);

that, given three integers X, Y and D, returns the minimal number of jumps from position X to a position equal to or greater than Y.

For example, given:
  X = 10
  Y = 85
  D = 30

the function should return 3, because the frog will be positioned as follows:

        after the first jump, at position 10 + 30 = 40
        after the second jump, at position 10 + 30 + 30 = 70
        after the third jump, at position 10 + 30 + 30 + 30 = 100

=end 




def solution(x,y,d)
  y-=x 
  (y/d.to_f).ceil 

end 

p solution(10,60,30)



require "minitest/autorun"

class Test < Minitest::Test 
  def test_divisble
    assert_equal 3, solution(20,80,20)
  end


  def test_un_divisble
    assert_equal 5, solution(30,80,10)
  end 
end 


