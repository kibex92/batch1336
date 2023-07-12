# IF
# if age.even?
#   puts "Your age is even!"
# end

# !IF
# if !age.odd?
#   puts "Your age is even!"
# end

# UNLESS
# unless age.odd?
#   puts "Your age is even!"
# end

# CAN YOU VOTE!

# IF/ELSE
# puts "How old are you?"
# age = gets.chomp.to_i

# if age >= 18
#   puts "You can vote!"
# else
#   puts "You cannot vote!"
# end

# TERNARY OPERATOR
# <CONDITION> ? <TRUTHY_PART> : <FALSEY_PART>

# puts "Heads or Tails?"
# guess = gets.chomp.downcase

# coin = ["heads", "tails"].sample

# if guess == coin
#   puts "Congrats you won!"
# else
#   puts "Sorry you lost!"
# end

# message = guess == coin ? "Congrats you won!" : "Sorry you lost!"
# puts message
# IF/ELSIF/ELSE

# hour = Time.now.hour

# if hour < 12
#   puts "Good morning!"
# elsif hour >= 20
#   puts "Good night!"
# elsif hour > 12
#   puts "Good afternoon!"
# else
#   puts "Lunch time!"
# end


# puts "What do you want to do? [READ|WRITE|QUIT]"
# answer = gets.chomp.upcase

# if answer == "READ"
#   puts "You are reading!"
# elsif answer == "WRITE"
#   puts "You are writing!"
# elsif answer == "QUIT"
#   puts "Goodbye!"
# else
#   puts "Wrong input!"
# end

# CASE STATEMENT
# case answer
# when "READ"
#   puts "You are reading"
# when "WRITE" then puts "You are writing!"
# when "QUIT" then puts "Goodbye!"
# else
#   puts "Wrong input!"
# end

# INLINE IF
# puts "Age?"
# age = gets.chomp.to_i
# puts "your age is even!" if age.even?
# puts "your age is even!" unless age.odd?

# fancy_dress = true
# on_list = true

# FANCY CLUB
# if fancy_dress && on_list
#   puts "Welcome to the fancy club!"
# end

# CHILL CLUB
# if fancy_dress || on_list
#   puts "Welcome to the chill club!"
# end

# hour = 13

# if (hour >= 9 && hour < 13) || (hour >= 14 && hour <= 18)
#   puts "Open!"
# elsif hour == 13
#   puts "Lunchtime"
# else
#   puts "Closed!"
# end

# WHILE/UNTIL/LOOP
# puts "What's your guess? Number between 1-5"
# guess = gets.chomp.to_i
# number = rand(1..5)

# until guess == number
#   puts "Please try again!"
#   guess = gets.chomp.to_i
# end

# while guess != number
#   puts "Please try again!"
#   guess = gets.chomp.to_i
# end

# loop do
#   break if guess == number
#   guess = gets.chomp.to_i
# end

# puts "You won!"

# FOR LOOP
# for name in ["Giordana", "Lucas", "Bruncky"] do
#   puts "#{name} is at Le Wagon Munich!"
# end