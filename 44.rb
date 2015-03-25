def pentagonal n
  n * (3 * n - 1) / 2
end

def pentagonal? n
  a = 1
  while a <= Math.sqrt(n)
    if (3*a*a - a)/2 == n
      return true
    end
    a += 1
  end
  return false
end

def each_pentagonal_upto x
  counter = 1
  current_pentagonal = pentagonal counter
  while current_pentagonal < x
    yield current_pentagonal
    counter += 1
    current_pentagonal = pentagonal counter
  end
end

def each_pentagonal
  counter = 1
  while counter < 10000
    yield pentagonal counter
    counter += 1
  end
end

results = []
each_pentagonal do |first_number|
  each_pentagonal_upto first_number do |second_number|
    if (pentagonal? (first_number - second_number)) and (pentagonal? (first_number + second_number))
      p first_number - second_number
    end
  end
end
