require 'csv'
require_relative '../models/meal'

class MealRepository
  def initialize(csv_file_path)
    @csv_file_path = csv_file_path
    # csv file path
    @meals = []
    # meals
    load_csv if File.exist?(csv_file_path)
  end

  def all
    @meals
  end
  
  private

  def load_csv
    CSV.foreach(@csv_file_path, headers: :first_row, header_converters: :symbol) do |row|
      # row is a Hash {id: 1, name: "Harissa", price: 17}
      row[:id] = row[:id].to_i
      row[:price] = row[:price].to_i
      meal = Meal.new(row)
      @meals << meal
    end
  end
end