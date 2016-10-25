require_relative("../lib/todo_list.rb")
require_relative("../lib/task.rb")

RSpec.describe Todo do
	let :list do
		Todo.new("Josh")
	end
	describe "#add_task" do
		it "adds tasks to tasks array" do
			expect(list.tasks.length).to eq(0)
			list.add_task(Task.new("Make a task"))
			expect(list.tasks.length).to eq(1)
		end
	end
	describe "#delete_task()" do
		it "removes a task by id" do
			task1 = (Task.new("Make task"))
			task2 = (Task.new("task two"))
			list.add_task(task1)
			list.add_task(task2)
			list.delete_task(task2.id)
			expect(list.tasks).not_to include(task2)
		end
	end
	describe "#find_by_id" do
		it "Finds task by id" do
			taskit = (Task.new("Hello"))
			list.add_task(taskit)
			task = list.find_by_id(taskit.id)
			expect(task.content).to eq("Hello")
		end
		it "Returns nil if id doesn't exist" do
			expect(list.find_by_id(100)).to eq(nil)
		end
	end
	describe "#sort_by_time" do
		it "sorts tasks by time created" do
			list.add_task(Task.new("Make task"))
			list.add_task(Task.new("task two"))
			thing2 = list.tasks[1].created_at
			expect(list.tasks[0].created_at).to be < thing2
		end
	end
	describe "initialize" do
		it "initializes a todo list with a user" do
			expect(list.user).to eq("Josh")
		end
	end
end