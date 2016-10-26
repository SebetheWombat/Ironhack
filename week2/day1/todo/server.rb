require 'sinatra'
require 'sinatra/reloader'
require 'pry'

require_relative('lib/task.rb')
require_relative('lib/todo_list.rb')

todo_list = Todo.new("Sebe")
t1 = Task.new("Task1")
t2 = Task.new("Task2")
todo_list.add_task(t1)
todo_list.add_task(t2)

get "/tasks" do
	@tasks = todo_list.tasks
	erb(:task_index)
end

get "/new_task" do
	erb(:new_task)
end

post "/create_task" do
	@new_task = Task.new(params[:task])
	todo_list.add_task(@new_task)
	redirect to('/tasks')
end

get "/complete/:id" do
	task = todo_list.tasks.find { |t| t.id == params[:id].to_i}
	task.complete!
	redirect to("/tasks")
end

post "/delete/:id" do
	todo_list.delete_task(params[:id].to_i)
	redirect to("/tasks")
end