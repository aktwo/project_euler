require 'benchmark'

# def get_approximation n
#   if n == 0
#     Rational(1,1)
#   else
#     1 + (1/(1 + get_approximation(n-1)))
#   end
# end

class Approximator
  def initialize
    @lookup = {}
    @lookup[0] = Rational(1,1)
  end

  def get_approximation n
    result = @lookup[n] || (1 + (1/(1 + get_approximation(n-1))))
    @lookup[n] = result
  end
end

# slow_version = Benchmark.realtime do
#   result = (1..1000).map do |n|
#     approximation = get_approximation n
#     approximation.numerator.to_s.size > approximation.denominator.to_s.size ? 1 : 0
#   end
#   p result.inject(:+)
# end

quick_version = Benchmark.realtime do
  approximator = Approximator.new
  result = (1..1000).map do |n|
    approximation = approximator.get_approximation n
    approximation.numerator.to_s.size > approximation.denominator.to_s.size ? 1 : 0
  end
  p result.inject(:+)
end

# puts "Slow version: #{slow_version}"
# puts "Quick version: #{quick_version}"

