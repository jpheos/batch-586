sentence = "BONjOUR"
condition = sentence.upcase == sentence

sentence_is_upcase = sentence.upcase == sentence


puts condition

if !condition
    puts "Je suis pas entierement en majuscule"
else
    puts "Je suis tout en majuscule"
end

unless condition
    puts "Je suis pas entierement en majuscule"
else
    puts "Je suis tout en majuscule"
end