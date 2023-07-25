class SessionsView
  def ask_user_for(input)
    puts "What's your #{input}"
    gets.chomp
  end

  def wrong_credentials
    puts "Wrong credentials. Try again!"
  end 

   def display(riders)
    riders.each_with_index do |rider, index|
      puts "#{index + 1}. #{rider.username}"
    end
  end
end
