require 'prime'

# FIXME
def pandigital? num, n
  digits = num.to_s.split('')
  bad_digits = (n+1..9).to_a << 0
  digits.uniq.size == n and not (bad_digits.map { |e| digits.include? e.to_s }.inject(:|))
end

def each_odd_num_reverse_from from, to
  counter = from
  while counter >= to
    yield counter
    counter -= 1
  end
end

each_odd_num_reverse_from(7654321, 1234567) do |num|
  if pandigital?(num, 7) and num.prime?
    p num
    break
  end
end
