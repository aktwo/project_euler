def each_triangle_number
  counter = 2
  current_num = 1
  while true do
    yield current_num
    current_num += counter
    counter += 1
  end
end

def num_divisors number
  count = 0
  Math.sqrt(number).floor.times do |factor|
    factor = factor + 1
    if number % factor == 0
      count += 2
    end
  end
  count
end

each_triangle_number do |n|
  if (num_divisors n) > 500
    puts n
    break
  end
end
