def pentagonal? n
  a = 1
  while a < Math.sqrt(n)
    if (3*a*a - a)/2 == n
      return true
    end
    a += 1
  end
  return false
end

def hexagonal? n
  a = 1
  while a < Math.sqrt(n)
    if 2*a*a - a - n == 0
      return true
    end
    a += 1
  end
  return false
end

def triangle_from n
  counter = n
  while true
    yield n * (n + 1) / 2
    n += 1
  end
end

triangle_from 286 do |triangle|
  puts "testing #{triangle}"
  if pentagonal? triangle and hexagonal? triangle
    p triangle
    break
  end
end


