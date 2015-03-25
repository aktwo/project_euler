require 'date'
start_date = Date.new(1901, 1, 1)
end_date = Date.new(2000, 12, 31)
counter = 0

(start_date..end_date).each do |date|
  if date.sunday? and date.mday == 1
    counter += 1
  end
end

p counter
