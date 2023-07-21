require_relative 'task'
require_relative 'task_repository'
require_relative 'tasks_controller'
require_relative 'view'
require_relative 'router'

repository = TaskRepository.new
view = View.new
controller = TasksController.new(repository, view)
router = Router.new(controller)

router.run