require_relative 'app/repositories/order_repository.rb'
require_relative 'app/repositories/customer_repository.rb'
require_relative 'app/repositories/meal_repository.rb'
require_relative 'app/repositories/employee_repository.rb'


employee_repository = EmployeeRepository.new("data/employees.csv")
customer_repository = CustomerRepository.new("data/customers.csv")
meal_repository = MealRepository.new("data/meals.csv")
order_repo = OrderRepository.new("data/orders.csv", meal_repository, customer_repository, employee_repository)
order = order_repo.all.first

