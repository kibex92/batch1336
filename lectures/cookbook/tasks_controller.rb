class TasksController
  # STATE
  def initialize(repository, view)
    @repository = repository
    @view = view
  end
  # BEHAVIOR
  # - USER STORIES

  def list
    # 1. Get all the tasks from the task repository
    tasks = @repository.all
    # 2. Pass on the tasks to the view to be displayed
    @view.display(tasks)
  end

  def add
    # 1. Ask user for task name -> View
    name = @view.ask_user_for_name
    # 2. Create a new task instance
    task = Task.new(name)
    # 3. Send the task to the repository -> Repository
    @repository.create(task)
    # 4. List
    list
  end

  def mark_as_done
    # List
    list
    # 1. Ask user for the index -> View
    index = @view.ask_user_for_index
    # 2. Get the task from the repo
    task = @repository.find(index) # -> Gives us a Task object
    # 3. Mark task as done
    task.mark_as_done!
    # 4. List
    list
  end
end