require_relative '../views/customers_view'
require_relative '../models/customer'

class CustomersController
  def initialize(customer_repository)
    @customer_repository = customer_repository
    @view = CustomersView.new
  end
  
  def list
    # 1. Get the meals from the meal_repository
    customers = @customer_repository.all
    # 2. Display meals in the view
    @view.display(customers)
  end

  def add
    # 1. Ask user for name
    name = @view.ask_user_for("name")
    # 2. Ask user for address
    address = @view.ask_user_for("address")
    # 3. Create a meal
    customer = Customer.new(name: name, address: address)
    # 4. Create the meal in the repo
    @customer_repository.create(customer)
  end
end