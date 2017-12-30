require "forwardable"

class Book
  @@sold_copies =0 
  attr_reader :name,:language,:author 
  def initialize(name, language,author,price,copies)
    @name = name
    @language = language 
    @author = author 
    @price= price 
    @copies = copies 
    @@sold_copies+=@copies 
  end
  def calculate_amt()
    unless @copies.nil? 
     return  @price * @copies 
    end 
    nil 
  end

  def sold_copies()
    @@sold_copies
  end 
end 

class Product
  extend Forwardable 
    def_delegators :@book,:name,:language,:author,:calculate_amt,:sold_copies 
  
  def initialize(name,language,author,price,copies)
    @book = Book.new(name,language,author,price,copies)
  end 

end 

p = Product.new("Harry potter","english ","JK Rowling",12, 2)
p p.name 
p p.calculate_amt 
p p.author 
p p.sold_copies
