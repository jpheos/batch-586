price_to_find = rand(1..5)
choice = nil

until choice == price_to_find
  puts "How much (between $1 and $5)?"
  choice = gets.chomp.to_i
end

# while choice != price_to_find
#     puts "How much (between $1 and $5)?"
#     choice = gets.chomp.to_i
#   end

puts "You won! Price was #{price_to_find}$"


for num in [1, 2, 3]
    puts num
end

[1,2,3].each do |num|
    puts num
end