# print 1-255
# for i in (1..255)
#   puts i
# end
#
# print odd numbers
# for i in (1..255)
#   unless i % 2 == 0
#     puts (i)
#   end
#   end
#
# sum numbers
# def sum nums
#   sumz = 0
#   for i in nums
#     sumz += i
#     puts "New number: "+ i.to_s + " Sum:"+ sumz.to_s
# end
# end
# sum (1..255)
#
# iterating through an array
# x = [1,1,1,4,3]
# for i in x
#   puts i
# end

# find max
# puts x.max
#
# get average
# def avg arr
#   sum = 0
#   avg = 0
# for i in arr
#   sum += i
# end
# avg = sum / arr.length
# return avg
# end
#
# puts avg x

# array with odd numbers
# x = (1..255)
# def odd_nums numbers
#   arr = []
#   for i in numbers
#     unless i % 2 == 0
#       arr.push(i)
#     end
#   end
#   return arr
# end
# print odd_nums x

# def greater_than arr, num
#   for i in arr
#     if i > num
#       puts i
#     end
#   end
# end
#
# greater_than [1,2,3,4,5,6,7], 3


arr = [-1,-4,0,12]
puts arr.each_index {|index| arr[index] = 0 if arr[index] < 0}

# Max, Min, and Average
# Given any array x, say [1, 5, 10, -2], create an algorithm that returns a hash with the maximum number in the array, the minimum value in the array, and the average of the values in the array.

arr = [1, 5, 10, -2]
{ max: arr.max, min: arr.min, average: arr.reduce(:+) / arr.length.to_f }

# Shifting the Values in the Array
# Given any array x, say [1, 5, 10, 7, -2], create an algorithm that shifts each number by one to the front. For example, when the program is done, an x of [1, 5, 10, 7, -2] should become [5, 10, 7, -2, 0].

arr = [1, 5, 10, 7, -2]
arr.rotate!(1)[arr.length-1] = 0

# Number to String
# Write a program that takes an array of numbers and replaces any negative number with the string 'Dojo'. For example, if array x is initially [-1, -3, 2] after your program is done that array should be ['Dojo', 'Dojo', 2].

arr = [-1, -3, 2]
puts arr.each_index { |index| arr[index] = "Dojo" if arr[index] < 0 }
