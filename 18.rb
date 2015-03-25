

# class Node
#   attr_accessor :parents
#   attr_accessor :value
#   attr_accessor :children

#   def initialize value
#     @value = value
#     @parents = []
#     @children = []
#   end

# end

# class Pyramid

#   attr_accessor :pyramid

#   def initialize input
#     @pyramid = input.split("\n").map { |line| line.split(' ').map { |num| Node.new(num.to_i) } }
#     @pyramid = @pyramid.map.with_index do |row, row_index|
#       row.map.with_index do |node, col_index|
#         puts "#{row_index}, #{col_index}: #{get_children(row_index, col_index).to_s}"
#         node.parents = get_parents row_index, col_index
#         node.children = get_children row_index, col_index
#         node
#       end
#     end
#   end

#   def root
#     @pyramid.first.first
#   end

#   def base
#     @pyramid.last
#   end

#   def get_children row_index, col_index
#     unless row_index == (@pyramid.size - 1)
#       [@pyramid[row_index + 1][col_index], @pyramid[row_index + 1][col_index + 1]]
#     end
#   end

#   def get_parents row_index, col_index
#     if row_index == 0 # root
#       nil
#     elsif col_index == 0 # left side
#       [@pyramid[row_index - 1][col_index]]
#     elsif col_index == row_index # right side
#       [@pyramid[row_index - 1][col_index - 1]]
#     else # middle
#       [@pyramid[row_index - 1][col_index - 1],@pyramid[row_index - 1][col_index]]
#     end
#   end
# end

# blah = Pyramid.new(input)


input = "75
95 64
17 47 82
18 35 87 10
20 04 82 47 65
19 01 23 75 03 34
88 02 77 73 07 63 67
99 65 04 28 06 16 70 92
41 41 26 56 83 40 80 70 33
41 48 72 33 47 32 37 16 94 29
53 71 44 65 25 43 91 52 97 51 14
70 11 33 28 77 73 17 78 39 68 17 57
91 71 52 38 17 14 91 43 58 50 27 29 48
63 66 04 68 89 53 67 30 73 16 69 87 40 31
04 62 98 27 23 09 70 98 73 93 38 53 60 04 23"

input = input.split("\n").map { |row| row.split(" ").map{|val| val.to_i} }.reverse
(input.size - 1).times do |row_index|
  input[row_index + 1].size.times do |col_index|
    input[row_index + 1][col_index] += [input[row_index][col_index], input[row_index][col_index+1]].max
  end
end

p input.flatten.last

