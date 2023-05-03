# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

100.times do 
  movie = Movie.create!(name: Faker::Movie.title,
                        year: Faker::Number.between(from: 1900, to: 2022),
                        genre: ["action", "horror", "comedy", "sci-fi", "romance", "documentary", "thriller"].sample,
                        synopsis: Faker::Lorem.paragraph_by_chars(number: 150),
                        director: Faker::Name.name,
                        my_rating: Faker::Number.between(from: 0.0, to: 5.0).round(2),
                        allocine_rating: Faker::Number.between(from: 0.0, to: 5.0).round(2),
                        already_seen: Faker::Boolean.boolean(true_ratio: 0.2)
                        )                        
end
