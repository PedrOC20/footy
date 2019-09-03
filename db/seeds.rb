# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Destroying all fields"
Field.destroy_all

field1 = Field.create!(
  name: "Estádio",
  location: "Lisbon",
  field_size: 3,
  field_type: "Grass",
  parking: true,
  locker_room: true,
  indoor: true,
  description: "Aba",
  user_id: 1
)

field2 = Field.create!(
  name: "Estádio A",
  location: "Porto",
  field_size: 3,
  field_type: "Wood",
  parking: true,
  locker_room: true,
  indoor: true,
  description: "Aba 69",
  user_id: 1
)

puts "Done!!"
