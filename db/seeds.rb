# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Destroying all group members"
GroupMember.destroy_all

puts "Destroying all groups"
Group.destroy_all

puts "Destroying all fields"
Field.destroy_all

puts "Destroying all users"
User.destroy_all



puts "Creating new users"
user1 = User.create!(
  role: "Owner",
  email: "pedromiguelcandeias@gmail.com",
  password: "123456",
  first_name: "Pedro",
  last_name: "Candeias",
  birth_date: "1988-05-31"
)

user2 = User.create!(
  role: "Player",
  email: "pedrocbva@gmail.com",
  password: "123456",
  first_name: "Pedro",
  last_name: "Andrade",
  birth_date: "1998-05-04"
)

user3 = User.create!(
  role: "Player",
  email: "carlos@lewagon.org",
  password: "123456",
  first_name: "Carlos",
  last_name: "Mendes",
  birth_date: "1986-11-22"
)

user4 = User.create!(
  role: "Player",
  email: "miguelpfigueiredo@gmail.com",
  password: "123456",
  first_name: "Miguel",
  last_name: "Figueiredo",
  birth_date: "1994-01-24"
)

user5 = User.create!(
  role: "Player",
  email: "vianney.thomasset@gmail.com",
  password: "123456",
  first_name: "Vianney",
  last_name: "Thomasset",
  birth_date: "1994-07-10"
)

user6 = User.create!(
  role: "Player",
  email: "bokac279@gmail.com",
  password: "123456",
  first_name: "Boris",
  last_name: "Djurisic",
  birth_date: "1988-09-27"
)

user7 = User.create!(
  role: "Player",
  email: "12345@gmail.com",
  password: "123456",
  first_name: "123",
  last_name: "456",
  birth_date: "1994-07-10"
)

user8 = User.create!(
  role: "Player",
  email: "1234@gmail.com",
  password: "123456",
  first_name: "12",
  last_name: "34",
  birth_date: "1988-09-27"
)

user9 = User.create!(
  role: "Player",
  email: "123456789@gmail.com",
  password: "123456",
  first_name: "12345",
  last_name: "6789",
  birth_date: "1994-07-10"
)

user10 = User.create!(
  role: "Player",
  email: "987654321@gmail.com",
  password: "123456",
  first_name: "98765",
  last_name: "4321",
  birth_date: "1988-09-27"
)

user11 = User.create!(
  role: "Player",
  email: "9513574628@gmail.com",
  password: "123456",
  first_name: "951357",
  last_name: "4628",
  birth_date: "1988-09-27"
)

puts "Creating new fields"
field1 = Field.create!(
  name: "Estádio",
  location: "Porto",
  field_size: 3,
  field_type: "Grass",
  parking: true,
  locker_room: true,
  indoor: true,
  description: "Aba",
  user_id: user1.id
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
  user_id: user1.id
)

puts "Creating new groups"
group1 = Group.create!(
  field_id: field2.id,
  date: "2019-09-04",
  start_time: "12:00",
  end_time: "13:00",
  min_members: 10,
  max_members: 12,
  status: "Pending",
  price: 40
)

group2 = Group.create!(
  field_id: field1.id,
  date: "2019-09-04",
  start_time: "12:00",
  end_time: "13:00",
  min_members: 10,
  max_members: 12,
  status: "Pending",
  price: 40
)

puts "Creating new group members"

groupmember1 = GroupMember.create!(
  user_id: user2.id,
  group_id: group1.id,
)

groupmember2 = GroupMember.create!(
  user_id: user3.id,
  group_id: group1.id,
)

groupmember3 = GroupMember.create!(
  user_id: user4.id,
  group_id: group1.id,
)

groupmember4 = GroupMember.create!(
  user_id: user5.id,
  group_id: group1.id,
)

groupmember5 = GroupMember.create!(
  user_id: user6.id,
  group_id: group1.id,
)

groupmember6 = GroupMember.create!(
  user_id: user7.id,
  group_id: group1.id,
)

groupmember7 = GroupMember.create!(
  user_id: user8.id,
  group_id: group1.id,
)

groupmember8 = GroupMember.create!(
  user_id: user9.id,
  group_id: group1.id,
)

groupmember9 = GroupMember.create!(
  user_id: user10.id,
  group_id: group1.id,
)




puts "Done!!"
