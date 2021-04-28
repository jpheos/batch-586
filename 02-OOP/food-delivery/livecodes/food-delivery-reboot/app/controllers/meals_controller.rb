require_relative "../views/meal_view"
require_relative "../models/meal"

class MealsController
  def initialize(meal_repository)
    @meal_repository = meal_repository
    @view = MealView.new
  end

  def list
    # 1 recupérer tous les meals
    meals = @meal_repository.all
    #2 afficher
    @view.display(meals)
  end

  def add
    # 1. ask for name
    name = @view.ask_for("name")
    # 2. ask for price
    price = @view.ask_for("price").to_i

    # 3. créer un meal
    meal = Meal.new(name:name, price: price)
    # 4. ajouter
    @meal_repository.create(meal)
    list
  end
end