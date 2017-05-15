# def test
#   puts "you are in the test block"
#   yield
#   puts "you are again, in the test block"
#   yield
# end
#
# test {puts "Hi"}

# def another_one
#   yield 8
#   puts "What a number"
#   yield 19
#   puts "Katherine's age "
# end
#
# another_one {|i| puts "Here's the number #{i}"}

def divider num
  puts "The number in question is " + num.to_s
  puts num.to_s + " divided by itself plus 3 = " + yield(num).to_s
end
divider (8) {|i| (i/i) + 3}
