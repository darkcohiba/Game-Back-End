# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

puts "🌱 Seeding start!"

User.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    flappy_high_score: Faker::Number.between(from: 4, to: 15),
    dodo_high_score: Faker::Number.between(from: 3, to: 15),
    password_digest: "password"
)



puts "🌱 Seeding done!"