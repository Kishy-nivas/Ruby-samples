def grade_assignment(mark)
  case mark 
  when 90..100
     "A"
    when 80..90
      "B"
    when 70..80
      "C"
    when  0..40
      "F"
    else 
      "RA"
    end 



end

puts grade_assignment 99 

