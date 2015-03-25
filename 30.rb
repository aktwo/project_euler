pow = 5
top = 295245
res = (10..top).to_a.keep_if do |x|
  x == x.to_s.split('').map { |e| Integer(e) ** pow }.inject(:+)
end

puts res.inject(:+)
