class Employee
  attr_reader :username, :password, :id

  def initialize(attr ={})
    # STATE
    # - username
    # - role
    # - password
    # - id
    @id = attr[:id]
    @username = attr[:username]
    @password = attr[:password]
    @role = attr[:role]
    # BEHAVIOR
    # - manager?
  end

  def manager?
    @role == "manager"
  end
end
