require 'set'
require 'prime'

def is_truncatable? n, primes
  unless n < 10
    number = n.to_s
    (number.size - 1).times do |x|
      unless (primes.include? number[0..x].to_i) and (primes.include? number[(x+1)..-1].to_i)
        return false
      end
    end
    true
  end
end

primes = Set.new(Prime.each(1000000))
p primes.to_a.keep_if{|e| is_truncatable? e, primes}.inject(:+)
