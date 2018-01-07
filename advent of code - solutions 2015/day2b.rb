class Order 
  def initialize 
    @total = 0 
  end 

  attr_reader :total 

  def add_box(box)
    lwh = box.split("x").map(&:to_i)
    sides = lwh.sort.first(2)
    @total += sides.inject(0){|sum,value| sum + 2*value } + lwh.inject(:*)

  end 
end 

order = Order.new    

f = File.open("day2a.txt")
f.each_line do |line| 
  order.add_box(line)
end 

p order.total 



