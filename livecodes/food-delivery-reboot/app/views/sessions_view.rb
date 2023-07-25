class SessionsView
  def ask_user_for(input)
    puts "What's your #{input}"
    gets.chomp
  end

  def wrong_credentials
    puts "Wrong credentials. Try again!"
  end 
end
