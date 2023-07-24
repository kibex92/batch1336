require_relative 'app/repositories/meal_repository'
require_relative 'app/controllers/meals_controller'
require_relative 'router'

meal_repository = MealRepository.new("data/meals.csv")
meals_controller = MealsController.new(meal_repository)
router = Router.new(meals_controller)

router.run