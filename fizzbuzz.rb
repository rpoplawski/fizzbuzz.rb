for i in 1..100
#puts i
  if i % 3 == 0 && i % 5 == 0 #i is divisible by 3 and 5
  puts "fizzbuzz"
  elsif i % 3 == 0 #i is divisible by 3
  puts "fizz"
  elsif i % 5 == 0 #i is divisible by 5
  puts "buzz"
  else
  puts i
  end
end

