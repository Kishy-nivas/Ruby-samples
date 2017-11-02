=begin 
result = []
weird_array = ["blah", :meow, 42, 90, :building]
Iterate over every element of weird_array and add the element to the result array if the element is a Symbol (i.e. an instance of the Symbol class).
=end 

result =[] 
weird_array = ["blah",:meow , 42,90,:building ]
weird_array.each do |w| 
	if w.instance_of?(Symbol)
		result<<w 
	end 
end 
result.each{|r| puts r }

=begin 
sports = ["basketball", "baseball", "football"]

Iterate over the sports Array and print out the following list:

"0. basketball"
"1. baseball"
"2. football"

=end 

sports = ["basketball", "baseball", "football"]
# a method which uses another varible to help indexing 
counter =0 
sports.each do |s| 
	puts "#{counter}.#{s}"
	counter+=1 
end 

print "****************\n"
# another method which doesn't use extra variable,but uses the built-in index value of the array 

sports.each_with_index do |val,ind|
	puts ind.to_s + "." + val 
end 


print "*************\n"

=begin 
last_names = ["D", "Krugman"]

Iterate over last_names and create this array: ["Paul D", "Paul Krugman"]
=end 
last_names = ["D","Krugman"]
l = last_names.map { |l| "Paul " + l  }   #one-liner,it creates a new array. 
puts l

print "*****************\n" 

=begin 
soap_opera = ["all", "my", "children"]
Return true if any of the elements in the soap_opera array start with the letter "a" and false otherwise
=end 

soap_opera = ["all","my","children"]


puts soap_opera.any? do |word| 
	word[0]=="a"
end

encloser = "*****************\n"
print encloser
=begin 
tools = ["ruby", "rspec", "rails"]

Return true if every element of the tools array starts with an "r" and false otherwise.
=end 

tools = ["ruby", "rspec", "rails"]
puts tools.all? do |t| 
	t[0]=="r"
end 


print encloser  


=begin 
captain_planet = ["earth", "fire", "wind", "water", "heart"]

Create a new array from the captain_planet array with all the elements that contain the letter "a".
=end 

captain_planet = ["earth", "fire", "wind", "water", "heart"]

captain_planet.select! do |w|        # note ! makes the changes in value, not copy 
	w.include?("a")
end
puts captain_planet 
print encloser

 # nested dictionaries 

 baseball_players = {:babe_ruth => {:runs => 134, :matches =>25 ,:record => "MVP"},
 					:james => {:run => 10, :matches =>34 ,:record => "MVP"} } 
 puts baseball_players[:babe_ruth][:matches]















