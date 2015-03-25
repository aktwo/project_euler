require 'prime'

primes = Prime.each(100000).first(1000)
p primes.reduce(:+)



/
def max primes, n
  value_ = primes.reduce(:+)
  if value.prime?
    return value
  else

  end

end
/
