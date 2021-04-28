require_relative "../views/customer_view"
require_relative "../models/customer"

class CustomersController
  def initialize(customer_repository)
    @customer_repository = customer_repository
    @view = CustomerView.new
  end

  def list
    display_customers
  end

  def edit
    # 1. list nos cutomers
    list
    # 2. on recupère l'id du customer
    index = @view.ask_for("customer").to_i
    # 3. recupérer le customer dans le repo
    customer = @customer_repository.find(index)
    new_name = @view.ask_for("new name")
    new_address = @view.ask_for("new address")
    puts "---- avant update----"
    customer.name    = new_name
    customer.address = new_address
    @customer_repository.update(customer)

    p customer

  end

  def destroy
    # 1. lister les cutoemrs
    list
    # 2. ask for customer tp delete
    index =  @view.ask_for("index").to_i

    # 3. 
    @customer_repository.destroy(index)
    list
  end

  def add
    # 1. ask for name
    name = @view.ask_for("name")
    # 2. ask for address
    address = @view.ask_for("address")

    # 3. créer un customer
    customer = Customer.new(name:name, address: address)
    # 4. ajouter
    @customer_repository.create(customer)
    list
  end

  private
  
  def display_customers
    customers = @customer_repository.all
    #2 afficher
    @view.display(customers)
  end
end