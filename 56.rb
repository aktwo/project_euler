max = 0

(1...100).each do |a|
  (1...100).each do |b|
    current = (a ** b).to_s.split('').map { |e| e.to_i }.inject(:+)
    if current > max
      max = current
    end
  end
end

p max
