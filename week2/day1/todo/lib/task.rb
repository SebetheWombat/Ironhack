class Task
	attr_accessor :content, :id, :created_at
	@@current_id = 1
	def initialize(content)
		@content = content
		@id = @@current_id
		@complete = false
		@created_at = Time.now()
		@@current_id += 1
	end
	def completed?
		@complete
	end

	def complete!
		@complete = true
	end
	def make_incomplete!
		@complete = false
	end
	def update_content!(text)
		@content = text
	end
end