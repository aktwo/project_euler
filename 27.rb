require 'prime'

class Coefficient

  def initialize
    @is_prime = {}
  end

  def each_integer
    counter = 0
    while true
      yield counter
      counter += 1
    end
  end

  def max_length(a, b)
    each_integer do |n|
      result = ((n**2) + (a * n) + b)
      if @is_prime[result].nil?
        @is_prime[result] = result.prime?
      end
      unless @is_prime[result] 
        return n-1
      end
    end
  end
end

c = Coefficient.new
size = 1000
possible_values = (-(size-1)..(size-1)).step(2).to_a
coefficients = possible_values.product(possible_values).max_by{|x| c.max_length x[0], x[1]}.inject(:*)

puts coefficients.to_s
