def is_pandigital(n)
  digits = n.to_s.split('')
  digits.uniq.size == 9 and not digits.include?("0")
end

beginning = Time.now

pandigitals = []
(1..9).each do |first|
  (1000..9876).each do |second|
    product = first * second
    if ([first, second, product].map { |e| e.to_s.size }.inject(:+)) == 9
      if is_pandigital(first.to_s + second.to_s + (first * second).to_s)
        pandigitals << (first * second) unless pandigitals.include? (first * second)
      end
    end
  end
end

(10..99).each do |first|
  (100..999).each do |second|
    product = first * second
    if ([first, second, product].map { |e| e.to_s.size }.inject(:+)) == 9
      if is_pandigital(first.to_s + second.to_s + (first * second).to_s)
        pandigitals << (first * second) unless pandigitals.include? (first * second)
      end
    end
  end
end

p pandigitals.inject(:+)

ending = Time.now

p "Operation took #{(ending-beginning) * 1000} ms"
