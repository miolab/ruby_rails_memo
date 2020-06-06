def fizzbuzz(n)
  if n % 15 === 0
    puts "FizzBuzz"
  elsif n % 3 === 0
    puts "Fizz"
  elsif n % 5 === 0
    puts "Buzz"
  else
    puts n.to_s
  end
end

fizzbuzz(1)
fizzbuzz(2)
fizzbuzz(3)
fizzbuzz(4)
fizzbuzz(5)
fizzbuzz(6)
fizzbuzz(15)