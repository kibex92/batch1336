class View
  # BEHAVIOR
  # - Display things to the user
  # - Get user data

  def display(tasks)
    tasks.each_with_index do |task, index|
      done = task.done? ? "[X]" : "[ ]"
      puts "#{index + 1}. #{done} #{task.name}"
    end
  end
   

  def ask_user_for_name
    puts "What is the name of your task?"
    gets.chomp
  end

  def ask_user_for_index
    puts "What is the number of the task?"
    gets.chomp.to_i - 1
  end
end