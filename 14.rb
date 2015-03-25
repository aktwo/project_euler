class Collatz

  def initialize
    @memory_of = {}
  end

  def length number
    counter = 1
    while number != 1
      if @memory_of[number]
        return counter + @memory_of[number]
      else
        counter += 1
        if number.even?
          number /= 2
        else
          number = (3 * number) + 1
        end
      end
    end
    @memory_of[number] = counter
    counter
  end
end

c = Collatz.new

max_starting_value = -1
max_length = 0
1000000.times do |number|
  unless number == 0
    curr_length = c.length number
    puts "#{number}"
    if curr_length > max_length
      max_length = curr_length
      max_starting_value = number
    end
  end
end

puts max_starting_value
