sum = 0
1000.times do |number|
  if (number % 3 == 0) or (number % 5 == 0)
    sum += number
  end
end

puts sum
