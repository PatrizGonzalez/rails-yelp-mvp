# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or create!d alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Restaurant.destroy_all

restaurant = Restaurant.create!(name: "Mojo", address: "Jacob van Lennepstraat 58", phone_number: "0634515361", category: "japanese")
review = Review.new(rating: 5, content: "Super good")
review.restaurant = restaurant
review.save

restaurant = Restaurant.create!(name: "Ferdi", address: "Vuntuslaan 5", phone_number: "0634515362", category: "japanese")
review = Review.new(rating: 4, content: "Good")
review.restaurant = restaurant
review.save

restaurant = Restaurant.create!(name: "Nui", address: "Lennepstraat 60", phone_number: "0634515363", category: "japanese")
review = Review.new(rating: 5, content: "Super nice")
review.restaurant = restaurant
review.save

restaurant = Restaurant.create!(name: "Abi", address: "Jacobstraat 70", phone_number: "0634515363", category: "japanese")
review = Review.new(rating: 4, content: "Amazing")
review.restaurant = restaurant
review.save

restaurant = Restaurant.create!(name: "Freya", address: "Kinkerstraat 80", phone_number: "0634515364", category: "japanese")
review = Review.new(rating: 5, content: "Excellent")
review.restaurant = restaurant
review.save

# Character.create!(name: "Gyoza", )
