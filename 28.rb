def spiral_diagonal_sum size
  n = size / 2
  result = 1
  n.times do |x|
    x += 1
    result += (2*x + 1) ** 2
    result += ((2*x) ** 2) + 1
    result += ((2*x) ** 2) - (2*(x-1) + 1)
    result += ((2*x + 1) ** 2) - (2*x)
  end
  result
end

puts spiral_diagonal_sum 1001
