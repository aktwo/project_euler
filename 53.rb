def fact n
  (1..n).inject(:*) || 1
end

def combinations n, r
  (fact n) / ((fact r) * (fact (n - r)))
end

counter = 0
(1..100).each do |n|
  (1..n).each do |r|
    if (combinations n, r) > 1000000
      counter += 1
    end
  end
end

p counter
