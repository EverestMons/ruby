# nums = [3,5,1,2,7,9,8,13,25,32]
#
# puts nums.reduce(:+)
# puts nums.reject { |i| i < 10}

# names = ["John", "KB", "Oliver", "Cory", "Matthew", "Christopher"]

# puts names.shuffle
# puts names.reject {|i| i.length < 5}

# alphabet = ('a'..'z').to_a
# # puts alphabet.shuffle.last
# shuffled = alphabet.shuffle
# puts "#{shuffled.first} is a vowel" if ["a","e","i","o","u","y"].include? shuffled.first
#
# prng = Random.new
# somearr = []
# 10.times {somearr.push( prng.rand(55..100))}
#
# print somearr.sort
# puts somearr.min
# puts somearr.max

# Create a random string that is 5 characters long (hint: (65+rand(26)).chr returns a random character; use a map function and a range to do this).
str = ""
5.times { str << rand(65..90).chr }
puts str

string_array = []
10.times do
  str = ""
  5.times { str << rand(65..90).chr }
  string_array << str
end
puts string_array
