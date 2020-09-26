# Enter your code here. Read input from STDIN. Print output to STDOUT
# 100.times do |i|
#   i+=1
#   if i%15==0
#       puts "FizzBuzz"
#   elsif i%5==0
#       puts "Buzz"
#   elsif i%3==0
#       puts "Fizz"
#   else
#       puts i
#   end
# end

i= 0
while(i<100)
  i+=1
  if i%15==0
      puts "FizzBuzz"
  elsif i%5==0
      puts "Buzz"
  elsif i%3==0
      puts "Fizz"
  else
      puts i
  end
end

# wrong output
# (1..100).each do |i|

#   puts "FizzBuzz" if i%15==0

#   puts "Buzz" if i%5==0

#   puts "Fizz" if i%3==0

#   puts i if i%15!=0 && i%5!=0 && i%3!=0
# end