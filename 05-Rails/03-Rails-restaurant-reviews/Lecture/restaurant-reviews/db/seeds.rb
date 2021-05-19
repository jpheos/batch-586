puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", stars: 5 }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", stars: 4 }

[ dishoom, pizza_east ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end

50.times do |i|
  Restaurant.create!({
    name: "name#{i}",
    address: "address#{i}",
    stars: rand(6),
    chef_name: %w[pierre paul jeanne].sample
  })
end

puts "Finished!"
