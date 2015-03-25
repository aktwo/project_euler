require 'set'

class Scorer
  def initialize
    @table = {}
    ("a".."z").each.with_index {|letter, index| @table[letter.upcase] = index + 1}
  end

  def score word
    word.upcase.split('').map{|e| @table[e]}.inject(:+)
  end
end

def each_triangle_number
  counter = 1
  while true
    yield (0.5 * counter * (counter + 1)).to_i
    counter += 1
  end
end

scorer = Scorer.new
scores = File.new('42.txt', 'r').read.split(',').map { |e| scorer.score(e[1..-2]) }
threshold = scores.max
triangle_numbers = Set.new

each_triangle_number do |number|
  if number > threshold
    break
  end
  triangle_numbers << number
end

p scores.map { |e| 1 if triangle_numbers.include? e }.compact.inject(:+)
