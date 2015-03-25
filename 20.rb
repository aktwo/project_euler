p (1..100).inject(:*).to_s.split('').map { |e| Integer(e) }.inject(:+)
