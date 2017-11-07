def ceasor_hash(s, n)
  n = n.to_i
  arr = s.split(' ')
  arr.each do |i|
    ans = ''
    i.each_char do |w|
      n.times do
        next unless ('a'..'z').cover?(w) || ('A'..'Z').cover?(w)
        w = if w == 'z'
              'a'
            elsif w == 'Z'
              'A'

            else
              w.next
              end
      end
      ans += w
    end
    print ans
    print ' '
  end
end

enter_val = gets.chomp
ceasor_hash(enter_val, 5) # => Bmfy f xywnsl!
