# TODO: implement the router of your app.
class Router
  def initialize(meals_controller, customers_controller)
    @running = true
    @meals_controller = meals_controller
    @customers_controller = customers_controller
    # TODO : initiliaze Session
  end

  def run
    @current_employee = @session_controller.sign_in
    while @current_employee
      display_tasks
      choice = gets.chomp.to_i
      print `clear`
      action(choice)
    end
  end

  private

  def action(choice)
    case choice
    when 1 then @meals_controller.list
    when 2 then @meals_controller.add
    when 3 then @customers_controller.list
    when 4 then @customers_controller.add
    when 5 then @customers_controller.destroy
    when 6 then @customers_controller.edit
    when 9 then @running = false
    else
      puts "Try again..."
    end
  end

  def display_tasks
    puts "------------------------------"
    puts "------------ MENU ------------"
    puts "------------------------------"
    puts "What do you want to do"
    puts "1 - List all meals"
    puts "2 - Add a meal"
    puts "3 - List all customers"
    puts "4 - Add a customer"
    puts "5 - delete a customer"
    puts "6 - edit a customer"
    puts "9 - Quit"
    print "> "
  end
end