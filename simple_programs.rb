#basic arrays,loops,conditions, map,string,dictionary used in Ruby 


# add bunny to the array 
def funify(arr)
	arr<<"bunny"
	arr.each{|i| puts i}
end 

a=[1,2,3,4]
funify(a)

# replace first element of a array with bunny 
puts "2**********"
def replace_first(arr)
	replace = "bunny"
	arr[0] = replace 
	arr.each {|i| puts i }
end 

b=[1,2,3,4,]
replace_first(b)

puts "3 ex .. ******* "

name = :crank 
puts name.inspect()
val = "unicorn"
puts val.reverse 

puts " while loop example **********"

items = ["bob", "builder","array "]

counter =0 
while counter <items.size 
	puts items[counter] + "-land"
	counter +=1 
end 




#loop methds 


puts "loop each method  " 
items.each{ |i| puts i+"-land "}

puts "loop by each method -2 "
deleted_arr = []  
array = ["snake", "rat", "cat", "dog"] 
array.each do |a| 
	if a[0]=="s"
		puts a 
	else 
		deleted_arr << a
	end  
end 
puts "deleted items "
deleted_arr.each do|d|
	puts d 
end 

# map methods 

puts " map method ... ******* "

num =[1,2,3,4,5]
num.map! do |i|            #note inplace ... else it won't change the original array 
	i**2 
end 
puts num 

puts "check whether the number 16 is present or not "
if num.include?(16)
	puts "16 is present "
else 
	puts " 16 is not present "
end 

# dictionary 


dic = {"type" => "dictionary", "use" => "key and value,storage" ,"note" => "not ordered "}
dic.each do |key,value| 
	puts "#{key} has #{value}"
	end 


# check whether a value exists in dictionary -values 
puts dic.values().include?("dictionary")

#check whether a key exists 
puts dic.keys().include?("type")

# let's use symbols as key ...... this time 

dic2 = {:type => "dictionary", :use => "key and value storage ", :note => "not ordered"}
dic2.each do |key,value | 
	puts "#{key} has #{value}"   
end 


puts dic2.keys.include?(:type)



# construct an array  using push method 

result = [] 
first_names = ["robert","stannis","renly"]
last_name = "baratheon"

first_names.each do |f| 
	result<<f.capitalize + " " + last_name.capitalize  # capitalize! to change the array in value 
end 

# display the result 

result.each do |r| 
	puts r 
end 



# let's convert an array to string 


arr_to_string = ["waters", "too", "polluted", "with", "germs"]
str = arr_to_string.join(" ")
puts str 


#let's convert an string to array 


string_to_arr = str.split(" ")
string_to_arr.each do |a| 
	print ("#{a} \n")  
end 


# that's all folks ,head over to object_oriented_examples :) 