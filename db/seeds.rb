# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

authors = [
  { first_name: "John", last_name: "Doe", yob: 1980, is_alive: true },
  { first_name: "Jane", last_name: "Smith", yob: 1975, is_alive: false },
  { first_name: "Michael", last_name: "Johnson", yob: 1990, is_alive: true },
  # Add more authors as needed
]

# Iterate over the array of authors and create them
authors.each do |author_params|
  Author.create(author_params)
end