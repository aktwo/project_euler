require 'prime'

possible = Prime.each(1000).to_a.reverse

def period_of n
  lpow = 1
  while true
    lpow.times.to_a.reverse.each do |mpow|
      if ((10**lpow) - (10**mpow)) % n == 0
        return (lpow - mpow)
      end
    end
    lpow += 1
  end
end

possible.each do |x| 
  if (period_of x) == x-1
    puts x
    break
  end
end

