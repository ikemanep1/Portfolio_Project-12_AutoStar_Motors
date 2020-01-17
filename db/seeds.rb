# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.destroy_all

50.times do
  name = Faker::Games::Pokemon.name
  description = Faker::Lorem.paragraph(12)
  product = Product.create!(name: name, cost: 1, country: name)
  5.times do
    name = Faker::Games::Pokemon.name
    review = Review.new(name: name, body: 1289038901238129803189023890129038901238901293801298039801238901283901298038901238992388901289013980328902389032890, rating: 1)
    review.product = product
    review.save!
  end
end

  p "created #{Product.count} Pokemon"
  p "created #{Review.count} Pokemon"
