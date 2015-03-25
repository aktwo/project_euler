require 'set'

def generate_triple m, n
  Set.new([m ** 2 - n ** 2, 2*m*n, m ** 2 + n ** 2])
end

def each_int_from n
  counter = n
  while counter < 1000
    yield counter
    counter += 1
  end
end


results = {}

each_int_from 1 do |n|
  each_int_from n do |m|
    trip = generate_triple m, n
    if trip.inject(:+) > 1000
      break
    end
    each_int_from 1 do |k|
      k_trip = Set.new(trip.map { |e| e * k })
      p = k_trip.inject(:+)
      if p > 1000
        break
      elsif results.include? p
        results[p].add(k_trip) unless k_trip.include? 0 or results[p].include? k_trip
      else
        results[p] = Set.new([k_trip]) unless k_trip.include? 0
      end
    end
  end
end

p results.max_by {|e| e[1].size}[0]
