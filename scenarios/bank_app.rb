# task rewrite this program, implementing object oriented features

default_balance = 100.0
io = nil
balance = nil
out = nil
file_name = 'balance.txt'
command = ''
if File.exist?(file_name)
  io = open(file_name)
  balance = io.gets.to_f
  puts 'balance read successfully !!! '
  io.close
else
  balance = default_balance
  puts 'default_balance loaded !!! '
end

until command.casecmp('Q').zero?

  print 'D)eposit, W)ithdraw, Q)uit, P)rint '
  command = gets.chomp
  if command.casecmp('D').zero?
    amount = gets.to_f
    while amount < 0
      print "Amount should be greater than zero, try again ! \n"
      print 'Try again : '
      amount = gets.to_f
    end
    balance += amount

  elsif command.casecmp('W').zero?
    amount = gets.to_f
    while (amount < 0) || (amount > balance)
      print "not enough balance \n"
      print('try again :')
      amount = gets.to_f
    end

    balance -= amount
  elsif command.casecmp('P').zero?
    puts balance
  elsif command.casecmp('Q').zero?
    puts "closing balance #{balance}"
  end
end
