factors = (1..20).to_a
result = factors.inject([1]) do |mem, var|
  mem.each {|n| var /= n unless var % n != 0}
  unless var == 1
    mem << var
  else
    mem
  end
end

puts result.inject(:*)
