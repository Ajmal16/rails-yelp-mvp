# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Deleting everything..."
Review.destroy_all # technically this even already happens when we destroy restaurants
Restaurant.destroy_all

charlotte = Restaurant.create!(name: "Charlotte I",
                               address: "Checkpoint Charlie",
                               phone_number: "+49320948032984",
                               category: "italian")
Review.create!(content: "Great pizza", rating: 5, restaurant: charlotte)
Review.create!(content: "Awesome place", rating: 5, restaurant: charlotte)

chupenga = Restaurant.create!(name: "Chupenga",
                              address: "Checkpoint Charlie",
                              phone_number: "+49320948032984",
                              category: "belgian")
Review.create!(content: "Terrible", rating: 1, restaurant: chupenga)
Review.create!(content: "Had food poisoning", rating: 1, restaurant: chupenga)

puts "Created #{Restaurant.count} restaurants and #{Review.count} reviews"
