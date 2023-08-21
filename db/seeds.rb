# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

puts " generating reviews"
5.times do
  review = Review.create!(
    name: Faker::Name.name_with_middle,
    description: Faker::Quote.yoda,
    user_id: User.last.id
  )
  review.save!
end
puts " reviews generated"
