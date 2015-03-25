def is_binary_palindrome? n
  binary = n.to_s(2)
  binary.reverse == binary
end

def is_decimal_palindrome? n
  decimal = n.to_s
  decimal.reverse == decimal
end

p (1..1000000).step(2).to_a.keep_if {|e| (is_binary_palindrome? e) and (is_decimal_palindrome? e)}.inject(:+)
