class TodoList
  def initialize
    @tasks = []
  end

  def add_task(task)
    @tasks << task
  end

  def mark_task_as_complete(task)
    @tasks.delete(task)
  end

  def list_tasks
    @tasks.each_with_index do |task, index|
      puts "#{index + 1}. #{task}"
    end
  end
end