sum = 0
(1..1000).each {|x| sum += x ** x}
p sum.to_s[-10..-1]
