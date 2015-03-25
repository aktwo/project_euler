MAX = 4000000
first = 1
second = 2

sum = 0

while first < MAX
  if (first % 2 == 0)
    sum += first
  end
  temp = first
  first = second
  second = temp + second
end

puts sum

