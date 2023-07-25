require_relative '../views/sessions_view'

class SessionsController
  def initialize(employee_repository)
    # STATE
    # - employee repository
    # - view
    @employee_repository = employee_repository
    @view = SessionsView.new
  end

  # BEHAVIOR
  # - Sign in 
  def sign_in
    # 1. Ask user for username
    username = @view.ask_user_for("username")
    password = @view.ask_user_for("password")
    # 2. Ask user for password
    # 3. Find the employee
    employee = @employee_repository.find_by_username(username)
    if employee 
      if employee.password == password
        return employee
      end
    else
      @view.wrong_credentials
      sign_in
    end
    # 4. Check if the password of the employee is equal to the
    # password from the user
    # 5. If they match
    #  succesfully logged in message
      # ?
  end
end
