require_relative '../lib/meerkat'
require_relative '../lib/lion'
require_relative '../lib/warthog'

# Define an Animal with an initialize(name) constructor, exposing its name.
# Define three Lion, Meerkat and Warthog classes
# Implement a #talk instance method which returns a sentence like "Simba roars" for each animal. (Hint: Meerkats bark and Warthog grunt)
# In another Ruby file, create an array with Simba, Nala, Timon & Pumbaa, iterate over it and puts the sound each animal make
# Implement a ::phyla class method which will return an array of the four phyla of the animal kingdom.
# mammals, birds, fish, reptiles, amphibians
# Add an #eat(food) instance method in Animal which returns a sentence like “Timon eats a scorpion”. Then override this method for the Lion class, and return a sentence like “Simba eats a gazelle. Law of the Jungle!”

characters = [
  Lion.new("Simba"),
  Lion.new("Nala"),
  Meerkat.new("Timon"),
  Warthog.new("Pumbaa")
]

characters.each do |character|
  # character is an instance of Lion or Meerkat or Warthog
  puts character.talk
end



puts "---------------"

timon = Meerkat.new("Timon")
sentence = timon.eat("fruit")

puts sentence


simba = Lion.new("Simba")

puts simba.run(10)