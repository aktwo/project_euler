range = (100..999)
puts range.map{|x| range.map {|y| x*y}}.flatten.select{|a| a.to_s.reverse == a.to_s}.max
