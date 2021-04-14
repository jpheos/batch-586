puts "What is your guess"
guess = gets.chomp # poile

choices = ["pile", "face"]

unless choices.include?(guess)
    puts "Tu t'es trompé"
    exit
end

random_choice = choices.sample

has_won = guess == random_choice #true or false

if has_won
    puts "T'es le plus fort Clément"
else
    puts "T'es vraiment trop nul Clément MALFROY"
end