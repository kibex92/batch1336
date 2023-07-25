class OrdersView
  def display(orders)
    orders.each_with_index do |order, index|
      puts "#{index + 1}. #{order.meal.name} -> #{order.customer.address} by #{order.employee.username}"
    end
  end

  def ask_user_for(input)
    puts "What's the #{input}"
    gets.chomp
  end

  def ask_user_for_index
    ask_user_for("number").to_i - 1
  end
end
