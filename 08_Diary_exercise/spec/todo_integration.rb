require "todo" 
require "todo_list"

RSpec.describe "integration" do
  context "adding incomplete entries" do
    it "Lists one entry after being added" do
      todo = Todo.new
      todo_list = TodoList.new("Buy Chocolate")
      todo_list.add(todo)
      expect(diary.incomplete).to eq [todo]
    end
  end
end
