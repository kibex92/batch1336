class Task
  attr_reader :name
  # STATE
  # - name
  # - done
  # - category
  # - due date

  def initialize(name)
    @name = name
    @done = false
  end

  # BEHAVIOR
  # - mark as done
  # - done?
  # - is_due?
  
  def mark_as_done!
    @done = true
  end

  def done?
    @done
  end
end