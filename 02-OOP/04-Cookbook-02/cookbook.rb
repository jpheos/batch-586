require 'csv'
require_relative 'recipe'

class Cookbook
  def initialize(csv_path)
    @recipes = []
    @csv_path = csv_path
    load
  end

  def all
    @recipes
  end

  def find(index)
    @recipes[index]
  end

  def add_recipe(new_recipe)
    @recipes << new_recipe
    save
  end

  def remove_recipe(index)
    @recipes.delete_at(index)
    save
  end

  def save_unsafely_from_controller
    save
  end

  private

  def load
    # read csv (in hard memory), and build recipes
    # full of  ruby objects
    CSV.foreach(@csv_path) do |row|
      recipe = Recipe.new(row[0], row[1], row[2].to_f, row[3].to_i, done: row[4].strip == "true")
      @recipes << recipe
    end
  end

  def save
    # rewrite csv with values taken from ruby memory recipes
    CSV.open(@csv_path, 'wb') do |csv|
      @recipes.each do |recipe|
        csv << [recipe.name, recipe.description, recipe.rating, recipe.prep_time, recipe.done]
      end
    end
  end
end
