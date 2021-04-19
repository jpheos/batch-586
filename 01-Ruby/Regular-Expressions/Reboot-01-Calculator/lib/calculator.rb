# Calculer en fonction de l'opérateur
def calculator(first_number, second_number, operator)
  case operator
    when "+"
      first_number + second_number
    when "-"
      first_number - second_number
    when "*"
      first_number * second_number
    when "/"
      first_number.to_f / second_number
    else
      nil
  end
end
