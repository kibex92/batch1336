class TaskRepository
  # STATE
  # tasks -> Empty Array
  def initialize()
    @tasks = []
  end

  # BEHAVIOR
  # - Add a task
  def create(task)
    @tasks << task
  end
  # - Delete a task

  def destroy(index)
    @tasks.delete_at(index)
  end
  # - Find a task
  def find(index)
    @tasks[index]
  end
  
  # - Retrieve all tasks
  def all
    @tasks
  end
end