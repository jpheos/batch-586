require_relative 'calculator'

# Valeur par défaut pour entrer dans la boucle
answer = "y"

# Début de la boucle
while answer == "y"
  # Demander le premier chiffre
  puts "Give me a number"
  # Récupérer le premier chiffre
  number_1 = gets.chomp.to_i
  # Demander le deuxième chiffre
  puts "Give me another number"
  # Récupérer le deuxième chiffre
  number_2 = gets.chomp.to_i
  # Demander l'opérateur
  puts "Give me an operator (+ - * /)"
  # Récupérer l'opérateur
  user_input = gets.chomp.to_s

  # Calcule le résultat
  result = calculator(number_1, number_2, user_input)

  # Afficher le résultat à l'utilisateur
  if result
    puts "Result is #{result}"
  else
    puts "I can't calculate"
  end

  puts "voulez-vous calculer (y / n)"
  answer = gets.chomp
end

