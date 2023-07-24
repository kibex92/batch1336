class Router
  
  def initialize(meals_controller)
    @meals_controller = meals_controller
    @running = true
  end
  

  def run
    while @running
    # 1. Display menu
      display_menu
      # 2. Get the user input
      action = gets.chomp.to_i
      # 3. Dispatch the user input to the right action
      dispatch_action(action)
    end
  end

  def dispatch_action(action)
    case action
    when 1 then @meals_controller.list
    when 2 then @meals_controller.add
    when 0 then stop
    else
      puts "Wrong input"
    end
  end

  def stop
    @running = false
  end
  
  def display_menu
    puts "-----MENU-----"
    puts "Welcome!"
    puts "1 - List all meals"
    puts "2 - Add a new meal"
    puts "3 - List all customers"
    puts "4 - Add a customer"
    puts "0 - Quit"
  end
end
