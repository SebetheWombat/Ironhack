class Room
	attr_accessor :name, :description, :exits, :actions, :items
	def initialize(name,description,exit,actions,items)
		@name = name
		@description = description
		@exits = exit
		@actions = actions
		@items = items
	end

end