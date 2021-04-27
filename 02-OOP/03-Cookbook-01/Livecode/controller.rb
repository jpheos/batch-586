require_relative 'view'
require_relative 'recipe'

class Controller

  def initialize(cookbook)
    @cookbook = cookbook
    @view = View.new
  end

  def list
    display_recipes
  end

  def create
    # Ask for name
    name = @view.ask_for('name')
    # Ask for description
    description = @view.ask_for('description')
    # Create instance of recipe
    user_recipe = Recipe.new(name, description)
    # Add instance to repository/cookbook
    @cookbook.add_recipe(user_recipe)

    # Recap of all recipes
    display_recipes
  end

  def destroy
    # Display recipes
    display_recipes
    # Ask for index
    index = @view.ask_for_index - 1
    # Ask cookbook to remove recipe
    @cookbook.remove_recipe(index)
  end

  private

  def display_recipes
    # Ask model for recipes (model)
    recipes = @cookbook.all
    # Display recipes in terminal (view)
    @view.display(recipes)
  end
end
