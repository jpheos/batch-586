# TODO: require relevant files to bootstrap the app.
# Then you can test your program with:
#   ruby app.rb
require_relative "app/repositories/meal_repository"
require_relative "app/controllers/meals_controller"
require_relative "app/repositories/customer_repository"
require_relative "app/controllers/customers_controller"
require_relative "router"

meal_csv = File.join(__dir__, "data/meal.csv")
customer_csv = File.join(__dir__, "data/customer.csv")
customer_repo  = CustomerRepository.new(customer_csv)
meal_repo  = MealRepository.new(meal_csv)
customers_controller = CustomersController.new(customer_repo)
meals_controller = MealsController.new(meal_repo)

router = Router.new(meals_controller, customers_controller)

router.run
