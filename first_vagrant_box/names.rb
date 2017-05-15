a = {first_name: "Michael", last_name: "Choi"}
b = {first_name: "John", last_name: "Doe"}
c = {first_name: "Jane", last_name: "Doe"}
d = {first_name: "James", last_name: "Smith"}
e = {first_name: "Jennifer", last_name: "Smith"}
name = [a, b, c, d, e]

def names list
  count = 0
  for i in list
    count += 1
  end
  puts "You have #{count} name(s) in your list"
  for i in list
    puts "The name is '#{i[:first_name]}''#{i[:last_name]}'"
  end
end

names name
