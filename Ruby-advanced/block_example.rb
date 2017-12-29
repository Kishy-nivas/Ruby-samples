class TaxAmount
  def initialize(name,&block)
    @name , @block  = name ,block            
  end 
  def get_amt(amt)
    @block.call (amt)
  end 
end 

T= TaxAmount.new("sales tax "){|amt| p 12.5 * amt }
T.get_amt(5)