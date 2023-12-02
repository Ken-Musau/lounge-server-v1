# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require 'faker'

puts " Start Seeding ...🌱"


puts "Add Users..."
User.create(role:"admin",  username: 'admin', first_name: Faker::Name.first_name ,email: "adin@gmail.com", last_name: Faker::Name.last_name , profile_picture: "https://i.pravatar.cc/48?u=499473", password: "123456")

User.create(username: Faker::Internet.username, first_name: Faker::Name.first_name ,email: "client@gmail.com", last_name: Faker::Name.last_name , profile_picture: "https://i.pravatar.cc/48?u=49942", password: "123456")

User.create(username: Faker::Internet.username, first_name: Faker::Name.first_name ,email: "client@gmail.com", last_name: Faker::Name.last_name , profile_picture: "https://i.pravatar.cc/48?u=499426", password: "123456")

User.create(username: Faker::Internet.username, first_name: Faker::Name.first_name ,email: "client@gmail.com", last_name: Faker::Name.last_name , profile_picture: "https://i.pravatar.cc/48?u=49926", password: "123456")

User.create(username: Faker::Internet.username, first_name: Faker::Name.first_name ,email: "client@gmail.com", last_name: Faker::Name.last_name , profile_picture: "https://i.pravatar.cc/48?u=4976", password: "123456")

User.create(username: Faker::Internet.username, first_name: Faker::Name.first_name ,email: "client@gmail.com", last_name: Faker::Name.last_name , profile_picture: "https://i.pravatar.cc/48?u=49476", password: "123456")

User.create(username: Faker::Internet.username, first_name: Faker::Name.first_name ,email: "client@gmail.com", last_name: Faker::Name.last_name , profile_picture: "https://i.pravatar.cc/48?u=99476", password: "123456")

User.create(username: Faker::Internet.username, first_name: Faker::Name.first_name ,email: "client@gmail.com", last_name: Faker::Name.last_name , profile_picture: "https://i.pravatar.cc/48?u=4499476", password: "123456")

User.create(username: Faker::Internet.username, first_name: Faker::Name.first_name ,email: "client@gmail.com", last_name: Faker::Name.last_name , profile_picture: "https://i.pravatar.cc/48?u=4599476", password: "123456")

User.create(username: Faker::Internet.username, first_name: Faker::Name.first_name ,email: "client@gmail.com", last_name: Faker::Name.last_name , profile_picture: "https://i.pravatar.cc/48?u=4996476", password: "123456")

User.create(username: Faker::Internet.username, first_name: Faker::Name.first_name ,email: "client@gmail.com", last_name: Faker::Name.last_name , profile_picture: "https://i.pravatar.cc/48?u=4994276", password: "123456")

User.create(username: Faker::Internet.username, first_name: Faker::Name.first_name ,email: "client@gmail.com", last_name: Faker::Name.last_name , profile_picture: "https://i.pravatar.cc/48?u=4994746", password: "123456")
puts " "
puts  "adding Users complete."
puts " "

puts "Add spaces..."

image_urls = ["https://images.unsplash.com/photo-1584132967334-10e028bd69f7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80", "https://images.unsplash.com/photo-1596436889106-be35e843f974?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80", "https://images.unsplash.com/photo-1520250497591-112f2f40a3f4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80", "https://images.unsplash.com/photo-1620332372374-f108c53d2e03?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2072&q=80", "https://plus.unsplash.com/premium_photo-1661964225206-fd5d445a6edd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1974&q=80", "https://images.unsplash.com/photo-1604014237800-1c9102c219da?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80", "https://images.unsplash.com/photo-1506059612708-99d6c258160e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2069&q=80", "https://plus.unsplash.com/premium_photo-1673626577922-1b3f9771fc3f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80", "https://images.unsplash.com/photo-1600585152915-d208bec867a1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2052&q=80", "https://images.unsplash.com/photo-1600607687920-4e2a09cf159d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80", "https://images.unsplash.com/photo-1416331108676-a22ccb276e35?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2067&q=80", "https://images.unsplash.com/photo-1602002418816-5c0aeef426aa?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1974&q=80"]

30.times do
  Space.create(
    name: Faker::Fantasy::Tolkien.location,
    location: Faker::Address.street_address,
    price: 1,
    status: false,
    image: image_urls.sample,
    description: Faker::Lorem.paragraph,
    contact: Faker::PhoneNumber.phone_number,
    user_id: User.first.id
  )
end
puts " "
puts  "adding spaces complete."
puts " "

puts " finish Seeding ...🌱"
