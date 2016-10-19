class Game
	attr_accessor :position
	def initialize()
		@game_board = [ [], [], [], [], [] ]
		@row = 0
		@col = 2
		@position = @game_board[@row][@col]
		@inventory = []
	end

	def add_room(r,c,room)
		@game_board[r][c] = room
	end

	def move(direction)
		case direction
		when 'n'
			@row -= 1
		when 's'
			@row += 1
		when 'e'
			@col += 1
		when 'w'
			@col -= 1
		when 'inventory'
			check_inventory
		end
		set_pos()
	end

	def pick_up(item)
		puts "Added #{item} to inventory"
		@inventory << item
	end

	def set_pos
		@position = @game_board[@row][@col]
	end

	def check_inventory
		puts "Your current inventory:"
		@inventory.each do |item|
			puts item
		end
	end

end