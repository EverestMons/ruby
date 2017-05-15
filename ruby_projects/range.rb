nums = (3..40)

def num range
  puts "The lowest number in the range is " + range.min.to_s
  puts "The highest number in the range is " + range.max.to_s
  if range.include?(43)
    puts "There is the value: 43 in set"
  end
end
num nums
