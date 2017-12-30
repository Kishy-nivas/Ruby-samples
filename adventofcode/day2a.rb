class Order
  def initialize
    @total = 0 
  end 
  attr_reader :total

  def add_box(box)
    h,l,w =box.split('x').map(&:to_i)
    values = [h*l,l*w,w*h]
    @total += values.inject(0){|sum,value| sum+2*value } +values.min   
  end 

end 

order = Order.new  
f= File.open('day2a.txt')
f.each_line do |line| 
  order.add_box(line)
end 

p order.total 



