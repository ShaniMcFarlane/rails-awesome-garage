# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Car.destroy_all
Owner.destroy_all

owner_a = Owner.create(nickname: "A")
owner_b = Owner.create(nickname: "B")
owner_c = Owner.create(nickname: "C")

Car.create(owner: owner_c, brand: "Porsche", model: "914", year: 1970, fuel: "Petrol")
Car.create(owner: owner_a, brand: "Aston Martin", model: "Zagato", year: 1960, fuel: "Petrol")
Car.create(owner: owner_b, brand: "Bentley", model: "MKV", year: 1940, fuel: "Petrol")

puts "#{Car.all.count} Cars and #{Owner.all.count} owners"
