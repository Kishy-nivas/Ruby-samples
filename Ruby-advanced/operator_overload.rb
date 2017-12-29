class ScoreCard
  def initialize 
    @total_score = @count =0  
  end

  def <<(score)
    @total_score += score 
    @count+=1 
    self
  end 

  def  calculate_average
    return "fail" if @count.zero? 
    Float(@total_score) /@count 
  end 
end 


class AddList 

  def initialize
      @list =Hash.new(0)  
  end 
  def []=(*params)
    value = params.pop
    unless @list.has_key? params[0]
      @list[params[0]] = value
    end 
  end
  def print 
    if @list 
      @list.each do |key,value| 
        p key, value 
      end 
    end 
  end 
end 



s = ScoreCard.new 
s<<3<<4<<5 
p s.calculate_average

a = AddList.new 
a[1]= "kishore"
a[1] = "raju"
a.print







