require "todo_list"

RSpec.describe TodoList do
  describe '#add_task' do
    xit 'adds tasks to the list' do
      todo_list.add_task("Walk the dog")
      expect(todo_list.list_tasks).to include("Walk the dog")
    end
  end

  describe '#mark_task_as_complete' do
    xit 'removes tasks from the list' do
      todo_list.add_task("Walk the dog")
      todo_list.add_task("Buy milk")

      todo_list.mark_task_as_complete("Walk the dog")

      expect(todo_list.list_tasks).not_to include("Walk the dog")
      expect(todo_list.list_tasks).to include("Buy milk")
    end
  end

  describe '#list_tasks' do
    xit 'lists all the tasks' do
      todo_list.add_task("Walk the dog")
      todo_list.add_task("Buy milk")

      expect { todo_list.list_tasks }.to output("1. Walk the dog\n2. Buy milk\n").to_stdout
    end
  end
end