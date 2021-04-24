puts 'Cleaning database...'

Restaurant.destroy_all

puts 'Creating restaurants'

10.times do
  restaurant = Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: ['chinese', 'italian', 'japanese', 'french', 'belgian'].sample
  )

  rand(1..5).times do
    Review.create(
      content: Faker::Marketing.buzzwords,
      rating: rand(0..5),
      restaurant: restaurant
    )
  end
end

puts 'Finished'
