require 'set'

def sum_of_proper_divisors n
  (1..Math.sqrt(n).floor).map{ |e| [e, n/e] if n % e == 0}.compact.flatten.uniq.inject(:+) - n
end

def is_abundant? n
  n < (sum_of_proper_divisors n)
end

top = 28123
can_be_written_as_sum = Array.new(top+1, false)
abundant_numbers = Set.new((1..top).map { |e| p e; e if is_abundant?(e) }.compact)

abundant_numbers.each do |x|
  puts x
  abundant_numbers.each do |y|
    can_be_written_as_sum[x+y] = true unless (x + y) > top
  end
end

puts "HI"
puts (1..top).to_a.delete_if{|x| can_be_written_as_sum[x]}.inject(:+)
