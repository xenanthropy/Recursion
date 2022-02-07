# frozen-string-literal: true

# main class
class Fibonacci
  def fibs(num)
    fib_array = []
    fib0 = 0
    fib1 = 1
    fib_array << 0
    if num == 1
      fib_array << 1
    else
      fib_array << 1
      (num - 1).times do |_unused|
        fib2 = fib0 + fib1
        fib_array << fib2
        fib0 = fib1
        fib1 = fib2
      end
    end
    fib_array
  end

  def fibs_rec(num)
    if num.zero?
      [0]
    elsif num == 1
      [0, 1]
    else
      array = fibs_rec(num - 1)
      array << array[num - 1] + array[num - 2]
      array
    end
  end
end

fibs = Fibonacci.new

print 'Non-recursive: '
p fibs.fibs(8)
print '    Recursive: '
p fibs.fibs_rec(8)
