puts (2**1000).to_s.split('').map{|e|Integer(e)}.inject(:+)
