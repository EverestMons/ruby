a = ["man", "bear", "elephant"]
b = ["coconut", "raisin", "melon"]
c = [1,4,5,6,7]

b.any? { |word| word.length == 3}

a.each { |word| print word, "+"}

puts (1..5).collect {|i| i+i}

puts (1..100).detect {|i| i%5 == 0 and i%7 == 0 }

puts (1..10).select {|i| i % 3 == 0}
puts (1..10).find_all {|i| i % 3 == 0}


puts (1..12).reject { |i| i % 4 == 0}

2.upto(6) { |i| print i, " "}
