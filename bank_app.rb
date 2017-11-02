default_balance =100.0 
io = nil 
balance = nil 
out = nil 
file_name = "balance.txt"
command = "" 
if File.exist?(file_name)
	io = open(file_name)
	balance = io.gets.to_f 
	puts "balance read successfully !!! "
	io.close 
else 
	balance = default_balance  
	puts "default_balance loaded !!! "
end 

while command.upcase !="Q"

	print "D)eposit, W)ithdraw, Q)uit, P)rint "
	command = gets.chomp() 
	if command.upcase =="D" then 
		amount = gets.to_f   
		while amount <0
			print "Amount should be greater than zero, try again ! \n"
			print "Try again : "
			amount=gets.to_f
		end 
		balance +=amount

	elsif command.upcase=="W"then 
		amount = gets.to_f   
		while amount< 0 or  amount > balance  
			print "not enough balance \n"
			print("try again :") 
			amount =gets.to_f  
		end 

		balance-=amount  
	elsif command.upcase == "P" then 
		puts balance  
	elsif command.upcase == "Q" then 
		puts "closing balance #{balance}"
	end 
end 



