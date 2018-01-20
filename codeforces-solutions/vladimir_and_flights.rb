n,s,e = gets.split.map(&:to_i)
route = gets 
if route[s-1] == route[e-1] then puts "0" else puts "1" end 
    