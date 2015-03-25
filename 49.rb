require 'prime'
require 'set'

def permutations n
  (0..3).map { |e| n.to_s.split('').rotate(e).join.to_i }.delete_if{ |e| e < 1000}.sort
end

primes = Set.new(Prime.each(10000).to_a.delete_if { |e| e < 1000 })
p primes.map {|prime| (permutations prime)}


/
(1000..9999).each do |start_number|
  numbers = permutations start_number
  p numbers
  if numbers[2] - numbers[1] == numbers[1] - numbers[0]
    # if numbers.each { |e| e.prime? }.inject(:&)
      # p numbers
    # end
  end
end
/
