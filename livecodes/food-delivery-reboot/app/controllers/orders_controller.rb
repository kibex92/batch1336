require_relative '../views/orders_view'
require_relative '../views/meals_view'
require_relative '../views/sessions_view'
require_relative '../views/customers_view'

class OrdersController
  def initialize(meal_repository,customer_repository, employee_repository,order_repository)
    @order_repository = order_repository
    @meal_repository = meal_repository
    @customer_repository = customer_repository
    @employee_repository = employee_repository
    @orders_view = OrdersView.new
  end

  def list_undelivered
    # 1. Get all undelivered orders from the order repo
    orders = @order_repository.undelivered_orders
    # 2. Display in the view
    @orders_view.display(orders)
  end

  def add
    # MEALS
    # display all meals
    meal = ask_user_for_meal
    customer = ask_user_for_customer
    rider = ask_user_for_rider
    order = Order.new(meal: meal, customer: customer, employee: rider)
    @order_repository.create(order)
    # CUSTOMERS
    # ...
  end

  private

  def ask_user_for_meal
    meals = @meal_repository.all
    MealsView.new.display(meals)
    # ask user for index
    index = @orders_view.ask_user_for_index
    # Find meal
    meal = meals[index]
  end
  
  def ask_user_for_customer
    customers = @customer_repository.all
    CustomersView.new.display(customers)
    # ask user for index
    index = @orders_view.ask_user_for_index
    # Find meal
    customer = customers[index]
  end
  
  def ask_user_for_rider
    riders = @employee_repository.all_riders
    SessionsView.new.display(riders)
    # ask user for index
    index = @orders_view.ask_user_for_index
    # Find meal
    rider = riders[index]
  end


end