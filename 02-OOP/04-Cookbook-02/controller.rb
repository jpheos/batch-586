require_relative 'view'
require_relative 'recipe'
require 'nokogiri'
require 'open-uri'
require 'pry'

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
    rating = @view.ask_for('rating').to_f # TODO: faire une vraie methode
    prep_time = @view.ask_for('preparation time')
    # Create instance of recipe
    user_recipe = Recipe.new(name, description, rating, prep_time)
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

  def import
    keyword = @view.ask_for('keyword')
    scraped_recipes = scrape_recipes(keyword)
    @view.display(scraped_recipes)
    index = @view.ask_for_index - 1
    new_recipe = scraped_recipes[index]
    @cookbook.add_recipe(new_recipe)
  end

  def mark_as_done
    display_recipes
    index = @view.ask_for_index - 1
    recipe_to_mark = @cookbook.find(index)
    recipe_to_mark.mark_as_done!
    @cookbook.save_unsafely_from_controller
  end

  private

  def display_recipes
    # Ask model for recipes (model)
    recipes = @cookbook.all
    # Display recipes in terminal (view)
    @view.display(recipes)
  end

  def scrape_recipes(keyword)
    url = "https://www.allrecipes.com/search/results/?search=#{keyword}"
    doc = Nokogiri::HTML(URI.open(url), nil, 'utf-8')

    recipes = []

    noko_results = doc.search('.card__detailsContainer-left').first(5) # Nokogiri:NodeSet (array)
    noko_results.each do |recipe_details|
      title = recipe_details.search('h3.card__title').first.text.strip
      description = recipe_details.search('.card__summary').first.text.strip
      rating = recipe_details.search('.review-star-text').first.text.strip.split(' ')[1].to_f
      # recipe_url = recipe_details.search('.card__titleLink').first.attribute('href').value

      # Ici, il faudrait analyser le markup des différentes pages et trouver une règle
      # recipe_doc = Nokogiri::HTML(URI.open(recipe_url), nil, 'utf-8')
      # générale pour trouver le prep time sur chaque recette, ou choisir une valeur par défaut
      # si pas dispo.

      prep_time = 0 # TODO : utiliser une vraie valeur scrapée

      recipes << Recipe.new(title, description, rating, prep_time)
    end

    return recipes # array d'instances de recipes
  end
end
