require_relative 'castle'
require_relative 'house'
require_relative 'skyscraper'

moulinsart = Castle.new("Moulinsart", 40, 30)
puts "#{moulinsart.name} is #{moulinsart.floor_area}"

trump_tower = Skyscraper.new("Trump Tower", 40, 30)
puts "#{trump_tower.name} is #{trump_tower.floor_area}"

# puts "Moulinsart has a butler: #{moulinsart.has_a_butler?}"

# moulinsart.butler = "Nestor"

# puts "Moulinsart has a butler: #{moulinsart.has_a_butler?}"

# puts Castle.categories

# moulinsart.category = "Renaissance"

# puts "Moulinsart is a type of #{moulinsart.category}"

# moulinsart.category = "Pouet"

# puts "Moulinsart is a type of #{moulinsart.category}"

house = House.new("Ma maison à Monplaisir", 40, 30, "Alfred")
puts "#{house.name} has a butler named #{house.butler.name}"

# House.price_per_square_meter("Paris")

