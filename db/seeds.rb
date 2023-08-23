require 'faker'

Costume.destroy_all

puts " generating costumes..."

50.times do
  costume = Costume.new(
    name: Faker::Name.name,
    description: Faker::Alphanumeric.alpha(number: 100),
    size: ["XS","S","M","L","XL","XXL"].sample,
    price: Faker::Config.random = Random.new(42),
    city: ["Marseille","Paris","Nice"].sample,
    user_id: users.all.sample,
    photos: Cloudinary::Uploader.upload("san_francisco.jpg")
  )
 costume.save!
end
puts 'Finished!'
