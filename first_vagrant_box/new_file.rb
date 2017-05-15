age = 22
unless age < 21
  puts "Welcome to the party"
else
  puts "you're too young to be here"

end
number = 15
if number % 3 == 0 && number % 5 == 0
  puts "FizzBuzz"
elsif number % 3 == 0
  puts "Fizz"
elsif number % 5 == 0
  puts "Buzz"
end

i = 0
num = 5
while i < num do
  puts "inside the loop i = #{i}"
  i += 1
  break if i == 2
end

for i in 0..5
  puts "value of local variable is #{i}"
end

for i in 0..5
  puts "Value of local variable is #{i}"
  break if i == 2
end

for i in 0..5
  next if i == 3
  puts "Value of local variable is #{i}"
end

def hello_world
  puts "hello there world"
end
hello_world
