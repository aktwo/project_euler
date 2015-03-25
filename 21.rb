class Amicable

  def initialize
    @memory_of = {}
  end

  def d(n)
    if @memory_of[n]
      @memory_of[n]
    else
      temp = (1...n).map{|e|e if n % e == 0}.compact.inject(:+)
      @memory_of[n] = temp
      temp
    end
  end
end

A = Amicable.new
puts (2..10000).map {|e| e if e == A.d(A.d(e)) and e != A.d(e)}.compact.inject(:+)
