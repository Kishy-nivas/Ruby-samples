
def pattern_match(string,pattern)
  match = pattern.match(string)
  if match
     "#{match.pre_match}->#{match[0]}<-#{match.post_match} " 
  else
    puts "no match"
  end 
end 

puts pattern_match("hello world ", /w/)


puts pattern_match("yes|(no)" ,/\(no\)/)
