# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."

Restaurant.create(name: "Mister Poulet", address: "16 villa gaudelet", category: "belgian")
puts "Created Mister Poulet"

Restaurant.create(name: "Chez Yong", address: "16 villa gaudelet", category: "chinese")
puts "Chez Yong"

Restaurant.create(name: "Didoune", address: "16 villa gaudelet", category: "french")
puts "Created Didoune"

Restaurant.create(name: "Nobinobi", address: "16 villa gaudelet", category: "japanese")
puts "Created Nobinobi"

Restaurant.create(name: "Piacere", address: "16 villa gaudelet", category: "italian")
puts "Piacere"

puts "Finished! Created #{Restaurant.count} restaurants."

