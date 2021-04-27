class View
  def display(recipes)
    puts "Here are your recipes:"
    recipes.each_with_index do |recipe, index|
      puts "#{index + 1}- #{recipe.name} - #{recipe.description}"
    end
  end

  # ask for name
  # ask for description
  # ask for index

  def ask_for_index
    puts "Please enter recipe number"
    gets.chomp.to_i
  end

  def ask_for(parameter)
    puts "Please enter recipe #{parameter}"
    gets.chomp
  end

  # def ask_for_name
  #   puts "Please enter recipe name"
  #   gets.chomp
  # end

  # def ask_for_description
  #   puts "Please enter recipe description"
  #   gets.chomp
  # end
end
