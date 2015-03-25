def fact(n)
  if n == 0
    1
  else
    (1..n).inject(:*)
  end
end

def is_curious(n)
  n.to_s.split('').map { |e| fact(Integer(e)) }.inject(:+) == n
end

p (10..50000).map { |e| e if is_curious(e) }.compact.inject(:+)
