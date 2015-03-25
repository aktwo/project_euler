require 'set'
require 'benchmark'

def each_int
  counter = 1
  while true
    yield counter
    counter += 1
  end
end

def has_same_digits? n
  required_digits = Set.new(n.to_s.split(''))
  (2..6).map { |e| Set.new((n*e).to_s.split('')) == required_digits }.inject(:&)
end

time = Benchmark.realtime do
  each_int do |int|
    if has_same_digits? int
      p int
      break
    end
  end
end

puts "operation completed in #{time} seconds"
