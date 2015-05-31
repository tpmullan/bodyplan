# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Starting Seeds"
6.times do |i|
  p = Program.create(name: "example #{i}", trending: true, price: 34.43, rating: 3.3, difficulty: 'medium' )
end
puts "Done Seeding"
