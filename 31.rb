matrix = []
headers = [1, 2, 5, 10, 20, 50, 100, 200]

(0..200).each do |num|
  new_row = []
  headers.each.with_index do |coin_val, index|
    if coin_val == 1
      new_row << 1
    elsif coin_val <= num
      new_row << new_row[-1] + matrix[num - coin_val][index]
    else
      new_row << new_row[-1]
    end
  end
  puts "#{num}: #{new_row.to_s}"
  matrix << new_row
end
