now_hour = Time.now.hour
puts now_hour

# Si il est avant 12h il est le matin
# Si il est avant 18 il est l'apres midi
# Si il est apres 18h il est le soir

# if now_hour < 18 && now_hour > 12
#     puts "Il est l'après midi"
# elsif now_hour < 12
#     puts "Il est le matin"
# else now_hour > 18
#     puts "Il est le soir"
# end

# Le magasin est ouvert entre 8h et 12h et entre 14h et 18h
now_hour = Time.now.hour
puts now_hour

store_is_open = (now_hour > 8 && now_hour < 12) || (now_hour > 14 && now_hour < 18)

if store_is_open
    puts "le magasin est ouvert"
else
    puts "le magasin est fermé"
end

puts "Le magasin chinois vous accueille" if store_is_open