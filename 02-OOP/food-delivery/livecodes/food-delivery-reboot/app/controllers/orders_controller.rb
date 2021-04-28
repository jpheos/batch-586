require_relative  "../views/order_view"
require_relative  "../views/meal_view"
require_relative  "../views/customer_view"
require_relative  "../views/employee_view"
class OrdersController
  def initialize(meal_repository,employee_repository, customer_repository, order_repository)
    @meal_repository = meal_repository
    @customer_repository = customer_repository
    @order_repository = order_repository
    @employee_repository = employee_repository
    @order_view = OrderView.new
    @meal_view = MealView.new
    @customer_view = CustomerView.new
    @employee_view = EmployeeView.new
  end

  def list_undelivered_orders
    orders = @order_repository.list_undelivered_orders
    p orders
    @order_view.display_undelivered_orders(orders)
  end

  def add
    # 1. display la carte des meals
    meals = @meal_repository.list
    @meal_view.display(meals)
    meal_id = @order_view.ask_for_id
    meal = @meal_repository.find(meal_id)

    customers = @customer_repository.list
    @customer_view.display(customers)
    customer_id = @order_view.ask_for_id
    customer = @customer_repository.find(customer_id)

    employees = @employee_repository.list
    @employee_view.display(employee)
    employee_id = @order_view.ask_for_id
    employee = @employee_repository.find(employee_id)

    order = Order.new(meal:meal, customer:customer, employee:employee)
    @order_repository.create(order)


    # 2. choisi un meal (id)
      # aller chercher dans le meal repo 
    # 3. display les customers
    # 4. choisir un customer
      # aller chercher dans le customer repo
    # 5. dsiplay la list des riders dispo
    # 6 le iuser choisi un rider 
      # aller chercher dans le employee
    # créer une instance d'order
    # tu te la mets dans l'order repo
  end
end