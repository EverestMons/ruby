# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user_list = [
  [ "Mark","Lehn", "marklehn@email.com" ],
  [ "John","Dawn", "jdawn@email.com" ],
  [ "Mike","Ford", "mikeford@email.com" ],
  [ "Percy","James", "pj@email.com" ],
  [ "Jane","Doe", "janedoe@email.com" ],
  [ "Bob","Smith", "bobsmith@email.com" ],
]

user_list.each do |first_name, last_name, email|
  User.create( first_name: first_name, last_name: last_name, email_address: email )
end

blog_list = [
  [ "Blog One", "This is the first blog" ],
  [ "Blog Two", "This is the second blog" ],
  [ "Blog Three", "This is the third blog" ],
  [ "Blog Four", "This is the fourth blog" ],
  [ "Blog Five", "This is the fifth blog" ],
]
blog_list.each do |name, description|
  Blog.create( name: name, description: description )
end
