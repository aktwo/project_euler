require 'prime'

def has_four_distinct_prime_factors? n
  n.prime_division.size == 4
end

def each_int
  counter = 1
  while true
    yield counter
    counter += 1
  end
end

count = 0
each_int do |int|
  if has_four_distinct_prime_factors? int
    count += 1
  else
    count = 0
  end
  if count == 4
    p int - 3
    break
  end
end
