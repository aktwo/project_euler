def is_curious(numerator, denominator)
  fraction = Rational(numerator, denominator)
  simplified_numerator = fraction.numerator
  simplified_denominator = fraction.denominator

  numerator_digits = numerator.to_s.split('')
  denominator_digits = denominator.to_s.split('')
  shared_digits = []

  numerator_digits.each do |digit|
    if denominator_digits.include? digit
      shared_digits << digit unless digit == '0'
    end
  end

  shared_digits.each do |digit|
    numerator_digits.delete(digit)
    denominator_digits.delete(digit)
  end

  if numerator_digits.empty? or denominator_digits.empty?
    return false
  end

  unless denominator_digits.join.to_i == 0
    naive_fraction = Rational(numerator_digits.join.to_i, denominator_digits.join.to_i)
    fraction.eql? naive_fraction unless shared_digits.empty?
  end
end

results = []

(11..99).each do |denominator|
  (10...denominator).each do |numerator|
    if is_curious numerator, denominator
      results << Rational(numerator, denominator)
    end
  end
end

p results.inject(:*).denominator
