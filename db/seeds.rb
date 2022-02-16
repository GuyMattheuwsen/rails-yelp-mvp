# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
my_restaurant = Restaurant.new(name: "L'Assiette Champaqnoise", category: "french", address: "Reims")
pepe = Restaurant.new(name: "Pepe Nero", category: "italian", address: "Leuven")
arenberg = Restaurant.new(name: "Arenberg", category: "belgian", address: "Egenhoven")
ming = Restaurant.new(name: "Ming Dinasty", category: "chinese", address: "Leuven")
sushi = Restaurant.new(name: "Sushi", category: "japanese", address: "Brussel")
my_restaurant.save
pepe.save
arenberg.save
ming.save
sushi.save

