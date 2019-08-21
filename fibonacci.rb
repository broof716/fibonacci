def recursive_fib(n)
  if n < 2
    n
  else
    recursive_fib(n - 1) + recursive_fib(n - 2)
  end
end

puts recursive_fib(9)

def iterative_fib(num)

  a = 0
  b = 1

  num.times do 
    temp = a
    a = b
    b = temp + b 
  end

  return a 

end

puts iterative_fib(9)



require 'benchmark'
num = 35
Benchmark.bm do |x|
  x.report("recursive_fib") { recursive_fib(num) }
  x.report("iterative_fib")  { iterative_fib(num)  }
end
