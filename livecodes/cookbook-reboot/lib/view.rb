# TODO: Define your View class here, to display elements to the user and ask them for their input
class View
  def ask_user_for(input)
    puts "What's the #{input}"
    gets.chomp
  end

  def display_list(recipes)
    # recipes -> Array of RECIPE INSTANCES
    recipes.each_with_index do |recipe, index|
      # recipe -> Instance of !!!!!RECIPE!!!!!!
      puts "#{index + 1}. #{recipe.name} - #{recipe.description}"
    end
  end

  def ask_user_for_index
    puts "What' s the number of the recipe?"
    gets.chomp.to_i - 1
  end
end
