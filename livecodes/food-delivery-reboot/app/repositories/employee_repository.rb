require 'csv'
require_relative '../models/employee.rb'

class EmployeeRepository
  def initialize(csv_file_path)
    # csv_file_path
    @csv_file_path = csv_file_path
    # employees
    @employees = []
    load_csv if File.exist?(csv_file_path)
  end

  def all
    @employees
  end
  
  def find(id)
    @employees.find { |employee| employee.id == id }
  end

  def find_by_username(username)
    @employees.find { |employee| employee.username == username }
  end
  
  private

  def load_csv
    CSV.foreach(@csv_file_path, headers: :first_row, header_converters: :symbol) do |row|
      row[:id] = row[:id].to_i
      employee = Employee.new(row)
      @employees << employee
    end
  end
end
