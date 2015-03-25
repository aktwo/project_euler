require 'prime'
number = 600851475143
max_num = Math.sqrt(number).floor

results = []

max_num.times do |factor|
  unless factor == 0
    if number.modulo(factor).zero?
      if (number / factor).prime?
        results << (number / factor)
      end
      if factor.prime?
        results << factor
      end
    end
  end
end

puts results.max
