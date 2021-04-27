class View
  def display(recipes)
    puts "Here are your recipes:"
    recipes.each_with_index do |recipe, index|
      recipe_marked = recipe.done ? 'X' : ' '
      recipe_prep_time_string = recipe.prep_time.zero? ? "" : "(#{recipe.prep_time} min)"
      recipe_info = "#{index + 1}-  [#{recipe_marked}] #{recipe.name} - #{recipe.rating}/5 #{recipe_prep_time_string}"
      puts recipe_info
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
