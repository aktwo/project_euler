a = 1
(0..9).to_a.permutation do |x|
  if a == 1000000
    puts x.join
    break
  else
    a += 1
  end
end
