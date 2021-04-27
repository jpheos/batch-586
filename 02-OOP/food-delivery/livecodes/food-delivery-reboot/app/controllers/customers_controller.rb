require_relative "../views/customer_view"
require_relative "../models/customer"

class CustomersController
  def initialize(customer_repository)
    @customer_repository = customer_repository
    @view = CustomerView.new
  end

  def list
    # 1 recupérer tous les customers
    customers = @customer_repository.all
    #2 afficher
    @view.display(customers)
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
end