puts "Quel est ton age ?"
age = gets.chomp.to_i
is_adult = age >= 18
# si j'ai plus de 18 ans je peux voter
# sinon non

# if is_adult
#     puts "Je peux voter"
# else
#     puts "Je peux pas voter"
# end




if is_adult
    puts "Je peux boire"
else
    puts "Je peux pas encore boire"
end

puts is_adult ? "Je peux boire" : "Je peux pas encore boire"