# frozen-string-literal: true

# main class
class Fibonacci
  @fib_array = []

  def fibs(num)
    fib0 = 0
    fib1 = 1
    @fib_array << 0
    if num == 1
      @fib_array << 1
    else
      @fib_array << 1
      num.each do |_unused|
        fib2 = fib0 + fib1
        @fib_array << fib2
        fib0 = fib1
        fib1 = fib2
      end
    end
  end

  def fibs_rec(num)


  end
end

fibs = Fibonacci.new

puts fibs.fibs(6)
