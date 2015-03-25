def each_integer
  counter = Rational('1')
  while counter < 100000
    yield counter
    counter += 1
  end
end

def minimal_diophantine_x d
  input_d = Rational(d)
  puts "now testing #{d}"
  each_integer do |y|
    x = Math.sqrt(1 + input_d * y * y)
    # puts "x = #{x} and y = #{y}"
    if x == x.to_i
      return x.to_i
    end
  end
  1000000
end

p (2..1000).to_a.delete_if {|e| Math.sqrt(e) == Math.sqrt(e).to_i}.max_by {|e| minimal_diophantine_x e}
