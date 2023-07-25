require 'csv'
require_relative '../models/order'

class OrderRepository
  def initialize(csv_file_path, 
                meal_repository,
                customer_repository,
                employee_repository)
    # csv_file_path
    @csv_file_path = csv_file_path
    @meal_repository = meal_repository
    @customer_repository = customer_repository
    @employee_repository = employee_repository
    # orders
    @next_id = 1
    @orders = []
    load_csv if File.exist?(csv_file_path)
  end

  def create(order)
    order.id = @next_id
    @next_id += 1
    @orders << order
    save_csv
  end

  def undelivered_orders
    @orders.reject { |order| order.delivered? }
  end

  private

  def load_csv
    CSV.foreach(@csv_file_path, headers: :first_row, header_converters: :symbol) do |row|
      meal_id = row[:meal_id].to_i
      row[:id] = row[:id].to_i
      row[:meal] = @meal_repository.find(meal_id)# -> !!!Meal Object!!!
      customer_id = row[:customer_id].to_i
      row[:customer] = @customer_repository.find(customer_id) # -> Customer Object
      employee_id = row[:employee_id].to_i
      row[:employee] = @employee_repository.find(employee_id)
      order = Order.new(row)
      @orders << order
    end
    @next_id = @orders.last.id + 1 unless @orders.empty?
  end

  def save_csv
    CSV.open(@csv_file_path, "wb") do |csv|
      csv << ["id", "meal_id", "customer_id", "employee_id", "delivered"]
      @orders.each do |order|
        csv << [order.id, order.meal.id, order.customer.id, order.employee.id, order.delivered?]
      end
    end
  end
end