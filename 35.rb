require 'prime'
require 'set'
require 'benchmark'

def rotations_one(n)
  number = n.to_s.split('').map { |e| Integer(e) }
  number.size.times.map { |e| number.rotate(e).join.to_i }
end

def rotations_two(n)
  number = n.to_s
  result = [number]
  (number.size - 1).times do
      result << result[-1][-1] + result[-1][0..-2]
  end
  result.map { |e| e.to_i }
end

def circular?(n, circulars, non_circulars, primes)
  if circulars.include? n
    return true
  end

  if non_circulars.include? n
    return false
  end

  is_circular = true

  tentative = Set.new
  rotations_two(n).each do |num|
    tentative.add num
    if not primes.include? num
      is_circular = false
    end
  end

  if is_circular
    circulars.merge tentative
  else
    non_circulars.merge tentative
  end
  return is_circular
end

circulars = Set.new
non_circulars = Set.new
time = Benchmark.realtime do
  primes = Set.new(Prime.each(1000000))
  result = primes.to_a.keep_if{|e| circular? e, circulars, non_circulars, primes}
  p result.size
end
puts "#{time * 1000} ms"
