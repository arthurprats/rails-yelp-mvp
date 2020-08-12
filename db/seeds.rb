# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Restaurant.destroy_all

puts "Creating restaurants..."
restaurant1 = { name: "pizza place", address: "montreal",phone_number: "5145145111", category: "italian"}
restaurant2 = { name: "sushi place", address: "montreal",phone_number: "5145145112", category: "japanese"}
restaurant3 = { name: "beglian place", address: "montreal",phone_number: "5145145113", category: "belgian"}
restaurant4 = { name: "chienese place", address: "montreal",phone_number: "5145145114", category: "chinese"}
restaurant5 = { name: "french place", address: "montreal",phone_number: "5145145115", category: "french"}


[restaurant1,restaurant2, restaurant3, restaurant4, restaurant5].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
