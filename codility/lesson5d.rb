def solution(s,p_arr,q)
  genomes = {a: Array.new(s.length+1,0), c: Array.new(s.length+1,0), g: Array.new(s.length+1,0) }
  #preprocees the string ranges 
  a_counter = c_counter = g_counter =0 
  answer = []
  ind =0 
  s.each_char do |val|
    if val =='A'
      a_counter+=1 
    elsif  val =='C'
      c_counter +=1 
    elsif  val =='G'
      g_counter +=1 
    end 

    genomes[:a][ind] = a_counter
    genomes[:c][ind] =  c_counter
    genomes[:g][ind] = g_counter 
    ind +=1 
  end # finish pre-process 
  
  p_arr.each_index do |i| 
    from  = p_arr[i]
    to = q[i]
    if genomes[:a][to] > genomes[:a][from-1]      # when from ==0 , from-1  accesses the last element which is also zero 
      answer << 1 
    elsif  genomes[:c][to] > genomes[:c][from-1]
      answer<<2 
    elsif genomes[:g][to] > genomes[:g][from-1]
      answer << 3 
    else  
      answer<<4 
    end 
      
  end
 p  answer 

end
solution('CAGCCTA',[2,5,0],[4,5,6])
