def each_fib_number
  first = 1
  second = 1
  yield first
  while true
    yield second
    temp = second + first
    first = second
    second = temp
  end
end

counter = 0
each_fib_number do |x|
  counter += 1
  if x.to_s.size == 1000
    puts counter
    break
  end
end
