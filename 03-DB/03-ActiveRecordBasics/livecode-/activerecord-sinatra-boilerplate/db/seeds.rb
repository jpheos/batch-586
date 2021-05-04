Restaurant.destroy_all

require 'faker'

10.times do
  Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address
  )
end
