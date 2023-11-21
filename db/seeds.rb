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
Admin.create(username: "kenmusau", first_name: "kennedy",email: "kennedy@gmail.com", last_name: "musau", profile_picture: "https://i.pravatar.cc/48?u=499476", password: "123456")

Client.create(username: Faker::Internet.username, first_name: Faker::Name.first_name ,email: "client@gmail.com", last_name: Faker::Name.last_name , profile_picture: "https://i.pravatar.cc/48?u=499473", password: "123456")

Client.create(username: Faker::Internet.username, first_name: Faker::Name.first_name ,email: "client@gmail.com", last_name: Faker::Name.last_name , profile_picture: "https://i.pravatar.cc/48?u=49942", password: "123456")

Client.create(username: Faker::Internet.username, first_name: Faker::Name.first_name ,email: "client@gmail.com", last_name: Faker::Name.last_name , profile_picture: "https://i.pravatar.cc/48?u=499426", password: "123456")

Client.create(username: Faker::Internet.username, first_name: Faker::Name.first_name ,email: "client@gmail.com", last_name: Faker::Name.last_name , profile_picture: "https://i.pravatar.cc/48?u=49926", password: "123456")

Client.create(username: Faker::Internet.username, first_name: Faker::Name.first_name ,email: "client@gmail.com", last_name: Faker::Name.last_name , profile_picture: "https://i.pravatar.cc/48?u=4976", password: "123456")

Client.create(username: Faker::Internet.username, first_name: Faker::Name.first_name ,email: "client@gmail.com", last_name: Faker::Name.last_name , profile_picture: "https://i.pravatar.cc/48?u=49476", password: "123456")

Client.create(username: Faker::Internet.username, first_name: Faker::Name.first_name ,email: "client@gmail.com", last_name: Faker::Name.last_name , profile_picture: "https://i.pravatar.cc/48?u=99476", password: "123456")

Client.create(username: Faker::Internet.username, first_name: Faker::Name.first_name ,email: "client@gmail.com", last_name: Faker::Name.last_name , profile_picture: "https://i.pravatar.cc/48?u=4499476", password: "123456")

Client.create(username: Faker::Internet.username, first_name: Faker::Name.first_name ,email: "client@gmail.com", last_name: Faker::Name.last_name , profile_picture: "https://i.pravatar.cc/48?u=4599476", password: "123456")

Client.create(username: Faker::Internet.username, first_name: Faker::Name.first_name ,email: "client@gmail.com", last_name: Faker::Name.last_name , profile_picture: "https://i.pravatar.cc/48?u=4996476", password: "123456")

Client.create(username: Faker::Internet.username, first_name: Faker::Name.first_name ,email: "client@gmail.com", last_name: Faker::Name.last_name , profile_picture: "https://i.pravatar.cc/48?u=4994276", password: "123456")

Client.create(username: Faker::Internet.username, first_name: Faker::Name.first_name ,email: "client@gmail.com", last_name: Faker::Name.last_name , profile_picture: "https://i.pravatar.cc/48?u=4994746", password: "123456")


puts " finish Seeding ...🌱"
