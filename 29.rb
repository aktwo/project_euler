require 'set'
set = Set.new
lo = 2
hi = 100
(lo..hi).each do |a|
  (lo..hi).each do |b|
    set.add (a ** b)
  end
end

puts set.size
