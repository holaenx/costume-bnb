# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
require 'faker'
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts " generating costumes brbrbrbrbr"
12.times do
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


# puts "generating user"
# User.create!(
#   email: "bobby@bobby.com",
#   password: "123456"
# )
# puts "bobby created"

# puts "Cleaning database..."
# Costume.destroy_all

# puts "Creating costumes..."
# eleven = {name: "Eleven costume", description: "You've already got the baby-pink dress with the Peter Pan collar; ", size: "M", price: 5, city: "Marseille", user_id: User.first.id}

# ironman = {name: "Iron man costume", description: "IronMan Mark 50 Foam armor templates these are more simplified patter", size: "XL", price: 8, city: "Marseille", user_id: 1}


# [eleven, ironman].each do |attributes|
#   costume = Costume.create!(attributes)
#   puts "Created #{costume.name}"
# end
# puts "Finished!"
