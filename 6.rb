puts ((1..100).inject(:+) ** 2) - (1..100).map { |e| e * e }.inject(:+)
