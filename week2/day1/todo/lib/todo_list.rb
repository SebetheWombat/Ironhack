class Todo
	attr_accessor :tasks, :user
	def initialize(user)
		@tasks = []
		@user = user
	end
	def add_task(task)
		@tasks << task
	end
	def delete_task(id)
		@tasks.delete_if {|t| t.id == id}
	end
	def find_by_id(id)
		t = nil
		@tasks.each do |task|
			if task.id == id
				t = task
			end
		end
		t
	end
	def sort_by_time
		@tasks = @tasks.sort {|a,b| a.created_at <=> b.created_at}
	end
end