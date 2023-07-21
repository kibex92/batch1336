class Router
  # State
  # controller

  def initialize(controller)
    @controller = controller
  end

  # BEHAVIOR 
  # Display menu
  # Dispatch user intention
  # Run the application

  def display_menu
    puts "Welcome to your TODO Manager!"
    puts "1 - List all tasks"
    puts "2 - Add a new task"
    puts "3 - Mark a task as done"
    puts "4 - Quit"
  end

  def run
    loop do
      display_menu
      action= gets.chomp.to_i
      dispatch(action)
    end
  end

  def dispatch(action)
    case action
    when 1 then @controller.list
    when 2 then @controller.add
    when 3 then @controller.mark_as_done
    else
      puts "Wrong input!"
    end
  end
end