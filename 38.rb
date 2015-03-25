def is_pandigital(n)
  digits = n.to_s.split('')
  digits.uniq.size == 9 and not digits.include?("0")
end

def generate_product(num, n)
  (1..n).inject("") {|m, v| m + (num*v).to_s}
end

def each_int
  counter = 1
  while true
    yield counter
    counter += 1
  end
end

possibilities = []
(2..9).to_a.reverse.each do |n|
  each_int do |int|
    result = generate_product(int, n)
    if result.size > 9
      break
    else
      possibilities << result.to_i if is_pandigital result.to_i
    end
  end
end

p possibilities.max
