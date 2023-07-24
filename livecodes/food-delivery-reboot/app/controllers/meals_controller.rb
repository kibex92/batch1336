require_relative '../views/meals_view'

class MealsController
  
  def initialize(meal_repository)
    @meal_repository = meal_repository
    @view = MealsView.new
  end
  


  def list
    # 1. Get the meals from the meal_repository
    meals = @meal_repository.all
    # 2. Display meals in the view
    @view.display(meals)
  end

  def add
    # 1. Ask user for name
    name = @view.ask_user_for("meal name")
    # 2. Ask user for price
    price = @view.ask_user_for_price
    # 3. Create a meal
    meal = Meal.new(name: name, price: price)
    # 4. Create the meal in the repo
    @meal_repository.create(meal)
  end
end