require "todo" 
require "todo_list"

RSpec.describe "integration" do
  context "adding incomplete entries" do
    xit "Lists one entry after being added" do
      todo = Todo.new
      todo_list = TodoList.new("Buy Chocolate")
      todo_list.add(todo)
      expect(diary.incomplete).to eq [todo]
    end
  end

  it "lists multiple added entries" do
    todo_1 = Todo.new("Buy tomatoes")
    todo_2 = Todo.new("Buy bread")
    todo_3 = Todo.new("Wash the cat")
    todo_list = TodoList.new
    todo_list.add(todo_1)
    todo_list.add(todo_2)
    todo_list.add(todo_3)
    expect(todo_list.incomplete).to eq ["Buy tomatoes", "Buy bread", "Wash the cat"]
  end
end

context "after completing some entries" do
  it "returns just the completed entries" do
    todo_1 = Todo.new("Buy tomatoes")
    todo_2 = Todo.new("Buy bread")
    todo_3 = Todo.new("Wash the cat")
    todo_list = TodoList.new
    todo_list.add(todo_1)
    todo_list.add(todo_2)
    todo_list.add(todo_3)
    todo_1.mark_done!
    todo_2.mark_done!
    expect(todo_list.complete).to eq ["Buy tomatoes", "Buy bread"]
  end
end

context "mark everything as done" do
  it "returns all the entries as completed" do
    todo_1 = Todo.new("Buy something1")
    todo_2 = Todo.new("Buy something2")
    todo_3 = Todo.new("Wash something3")
    todo_list = TodoList.new
    todo_list.add(todo_1)
    todo_list.add(todo_2)
    todo_list.add(todo_3)
    todo_list.give_up!
    expect(todo_list.complete).to eq ["Buy something1", "Buy something2", "Wash something3"]
  end
end
