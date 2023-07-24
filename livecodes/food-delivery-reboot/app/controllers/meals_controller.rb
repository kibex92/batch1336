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
end