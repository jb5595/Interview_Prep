

def fibonacci(number)
  if number == 1 || number==2
    n= 1
  else
    previous = [1,1]
    n = 2
    number.times do
        previous[0] = previous[1]
        previous[1] = n
        n = previous[0] + previous[1]
      end
    end
    return n
end

puts fibonacci(1)
puts fibonacci(2)
puts fibonacci(3)
puts fibonacci(4)
puts fibonacci(5)
puts fibonacci(6)
puts fibonacci(8)
puts fibonacci(9)
puts fibonacci(10)
puts fibonacci(11)
