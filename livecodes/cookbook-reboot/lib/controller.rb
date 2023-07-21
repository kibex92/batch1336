#  TODO: Define your Controller Class here, to orchestrate the other classes
require_relative "view"
require_relative "recipe"

class Controller
  def initialize(cookbook)
    @cookbook = cookbook
    @view = View.new
  end

  def add
    # 1. Ask the user for the recipe name
    name = @view.ask_user_for("name")
    description = @view.ask_user_for("description")
    # 2. Ask the user for the recipe description
    # 3. Create a new recipe instance
    recipe = Recipe.new(name, description)
    # 4. Add the recipe to the cookbook
    @cookbook.create(recipe)
  end

  def list
    # 1. Get all the recipes from the cookbook
    recipes = @cookbook.all
    # 2. Pass the recipes to the view to be displayed
    @view.display_list(recipes)
  end

  def remove
    # 1. Display recipes
    list
    # 2. Ask the user for the index
    index = @view.ask_user_for_index
    # 3. Delete by index
    @cookbook.destroy(index)
    # 4. Display again
    list
  end
end