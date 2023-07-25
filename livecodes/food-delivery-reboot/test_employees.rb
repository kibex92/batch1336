require_relative 'app/repositories/employee_repository'

employees_csv = "data/employees.csv"
employee_repo = EmployeeRepository.new(employees_csv)

p employee_repo.all