def each_string_int
  counter = 1
  while true
    yield counter.to_s
    counter += 1
  end
end

position = 0
desired_positions = (0..6).map { |e| 10 ** e }
max_position = desired_positions.max
result = 1
each_string_int do |string|
  temp_position = position + string.size
  desired_positions.each do |desired_position|
    if desired_position <= temp_position and desired_position > position
      result *= string[desired_position - position - 1].to_i
    end
  end
  position = temp_position
  if position > max_position
    break
  end
end

p result
