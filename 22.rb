scores = {}
("a".."z").map.with_index{|letter, number| scores[letter] = number + 1}
puts File.new('22.txt', 'r').read.downcase.gsub("\"", "").split(',').sort.map.with_index{|name, score| name.split('').inject(0){|m, v| m + scores[v]} * (score + 1)}.inject(:+)


