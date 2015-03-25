def valid number
  (number[1..3].to_i % 2 == 0) & (number[2..4].to_i % 3 == 0) & (number[3..5].to_i % 5 == 0) & (number[4..6].to_i % 7 == 0) & (number[5..7].to_i % 11 == 0) & (number[6..8].to_i % 13 == 0) & (number[7..9].to_i % 17 == 0)
end

sum = 0

(0..9).to_a.permutation do |number|
  number_string = number.join
  if valid number_string
    sum += number_string.to_i
  end
end

p sum
