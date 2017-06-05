# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create([
  { first_name: 'Mark', last_name: 'Lehn', email:'marklehn@icloud.com', password: 'asdfasdf', city:'Chicago', state:'IL'},
  { first_name: 'David', last_name: 'Lehn', email:'davidlehn@icloud.com', password: 'asdfasdf', city:'Minneapolis', state:'MN'},
  { first_name: 'Daniel', last_name: 'Lehn', email:'daniellehn@icloud.com', password: 'asdfasdf', city:'Eden Parrie', state:'MN'},
  { first_name: 'Katherine', last_name: 'Lehn', email:'katerinelehn@icloud.com', password: 'asdfasdf', city:'Three Lakes', state:'WI'}
  ])

  
