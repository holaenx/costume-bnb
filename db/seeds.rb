# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
require 'faker'
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


puts " generating costumes brbrbrbrbr"
50.times do
  costume = Costume.create!(
    name: Faker::Name.name_with_middle,
    description: Faker::Quote.yoda,
    size: "M",
    price: 12,
    city: Faker::Address.city,
    user_id: User.last.id
  )
  costume.save!
end
puts " costumes generated"
