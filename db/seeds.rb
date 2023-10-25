require 'faker'

Movie.destroy_all

genres = ["action", "horreur", "comédie", "drame"]


100.times do
  Movie.create(
    name: Faker::Movie.title,
    year: Faker::Number.between(from: 1900, to: 2020),
    genre: genres.sample,
    synopsis: Faker::Lorem.sentence(word_count: 10),
    director: Faker::Name.name,
    allocine_rating: Faker::Number.between(from: 0, to: 50) / 10.0,
    already_seen: false,
    my_rating: nil
  )
end

27-36-39-45-48-50-51-72-96



# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
