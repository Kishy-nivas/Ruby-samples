class FrequencyWord
  def initialize(string, n)
    @string = string
    @number = n
  end 
  private 

  def string_to_words()
    words = @string.downcase.scan(/[\w']+/)
    words 
  end 

  def count_frequency(words)
    words_with_count = Hash.new(0)
    words.each do |w| 
      words_with_count[w]+=1 
    end 
    words_with_count
  end 

  public 
  def print()
    words= string_to_words()
    val = count_frequency words 
    sorted = val.sort_by{|key,val| val}.last(@number).reverse 
    sorted.each do |key ,val| 
      puts "words : #{key}, count #{val}"
    end 

  end

end

puts "Enter the string:"
string = gets.chomp!  
puts "Enter the limit of top repeated words:"
number = gets.chomp!.to_i

F = FrequencyWord.new(string,number)
F.print 






