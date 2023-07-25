class Router
  def initialize(meals_controller, customers_controller, sessions_controller)
    @meals_controller = meals_controller
    @customers_controller = customers_controller
    @sessions_controller = sessions_controller
    @running = true
  end

  def run
    # SIGN IN HERE
    while @running
      # 1. Display menu
      @employee = sign_in # -> Gives us an employee
      while @employee
        display_menu
      # 2. Get the user input
        action = gets.chomp.to_i
      # 3. Dispatch the user input to the right action
        dispatch_action(action)
      end 
    end
  end

  def sign_out
    @employee = nil
  end

  def sign_in
    @sessions_controller.sign_in
  end
  
  def dispatch_action(action)
    if @employee.manager?
      dispatch_manager_action(action)
    else
      dispatch_rider_action(action)
    end
  end

  def dispatch_manager_action(action)
    case action
    when 1 then @meals_controller.list
    when 2 then @meals_controller.add
    when 3 then @customers_controller.list
    when 4 then @customers_controller.add
    when 9 then sign_out
    when 0 then stop
    else
      puts "Wrong input"
    end
  end

  def dispatch_rider_action(action)
    case action
    when 1 then puts "TO DO"
    when 2 then puts "TO DO"
    when 9 then sign_out
    when 0 then stop
    else
      puts "Wrong input"
    end
  end

  def stop
    sign_out
    @running = false
  end

  def display_menu
    if @employee.manager?
      display_manager_menu
    else
      display_rider_menu
    end
  end

  def display_manager_menu
    puts "-----MENU-----"
    puts "Welcome!"
    puts "1 - List all meals"
    puts "2 - Add a new meal"
    puts "3 - List all customers"
    puts "4 - Add a customer"
    puts "9 - Sign out"
    puts "0 - Quit"
  end

  def display_rider_menu
    puts "-----MENU-----"
    puts "Welcome!"
    puts "1 - List all undelivered meals"
    puts "2 - Mark an order as delivered"
    puts "9 - Sign out"
    puts "0 - Quit"
  end
end
