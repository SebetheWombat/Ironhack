require_relative("../lib/task.rb")

RSpec.describe Task do
	before(:each) do
		@task = Task.new("Buy a puppy")
	end
	describe "#initialize" do
		it "creates id and content variable for each new todo list" do
			list = Task.new("Create test spec")
			list2 = Task.new("Write code for method")
			expect(list.id).to eq(list2.id-1)
			expect(list.content).to eq("Create test spec")
			expect(list2.content).to eq("Write code for method")
		end
	end
	describe "#completed?" do
		it "returns false for new tasks" do
			expect(@task.completed?).to be_falsey
		end
	end
	describe "#complete!" do
		it "changes the completed attribute of a task to true" do
			@task.complete!
			expect(@task.completed?).to be_truthy
		end
	end
	describe "#make_incomplete!" do
		it "changes the completed attribute of a task to false" do
			@task.complete!
			@task.make_incomplete!
			expect(@task.completed?).to be_falsey
		end
	end
	describe "created at variable" do
		it "should correctly create a timestamp for a new task" do
			expect(Task.new("Word").created_at).to be_within(0.01).of(Time.now())
		end
	end
	describe "#update_content!" do
		it "should change the text in the content variable of a task" do
			@task.update_content!("Buy a kitten")
			expect(@task.content).to eq("Buy a kitten")
			@task.update_content!("Play with kitten")
			expect(@task.content).to eq("Play with kitten")
		end
	end

end