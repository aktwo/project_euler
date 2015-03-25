def is_pythagorean(a,b,c) 
  (a ** 2) + (b ** 2) == (c ** 2)
end

1000.times do |a|
  1000.times do |b|
    c = 1000 - a - b
    if is_pythagorean a, b, c
      puts (a * b * c)
    end
  end
end
