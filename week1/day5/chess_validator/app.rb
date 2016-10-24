#TODO: Create check for Check

require_relative("lib/piece.rb")
require_relative("lib/rook.rb")
require_relative("lib/king.rb")
require_relative("lib/knight.rb")
require_relative("lib/bishop.rb")
require_relative("lib/queen.rb")
require_relative("lib/pawn.rb")
require_relative("lib/board.rb")

board = Board.new

board.add_piece(Rook.new(1,8,"black","R "))
board.add_piece(Knight.new(2,8,"black","K "))
board.add_piece(Bishop.new(3,8,"black","B "))
board.add_piece(Queen.new(4,8,"black","Q "))
board.add_piece(King.new(5,8,"black","Ki"))
board.add_piece(Bishop.new(6,8,"black","B "))
board.add_piece(Knight.new(7,8,"black","K "))
board.add_piece(Rook.new(8,8,"black","R "))

8.times do |i|
	board.add_piece(Pawn.new(i+1,7,"black","P "))
end

board.add_piece(Rook.new(1,1,"white","R "))
board.add_piece(Knight.new(2,1,"white","K "))
board.add_piece(Bishop.new(3,1,"white","B "))
board.add_piece(Queen.new(4,1,"white","Q "))
board.add_piece(King.new(5,1,"white","Ki"))
board.add_piece(Bishop.new(6,1,"white","B "))
board.add_piece(Knight.new(7,1,"white","K "))
board.add_piece(Rook.new(8,1,"white","R "))

8.times do |i|
	board.add_piece(Pawn.new(i+1,2,"white","P "))
end

puts ""

board.print_board
turn = "white"
move_from = ""
move_to = ""

while turn != "orange"
	while turn == "white"
		board.move_made = false
		puts "WHITE'S MOVE!"
		print "move from: "
		move_from = gets.chomp
		if move_from == "quit"
			turn = "orange"
			break
		end
		moves = move_from.split(" ")
		if moves[0].to_i > 8 || moves[1].to_i > 8
			puts "Invalid Move!"
			board.print_board
		elsif !board.board[moves[0].to_i][moves[1].to_i].nil? && board.board[moves[0].to_i][moves[1].to_i].color == "black"
			puts "You can't move your opponents pieces!"
		else
			print "move to: "
			move_to = gets.chomp
			board.move_piece(move_from,move_to)
			if board.move_made
				turn = "black"
			end
		end
	end
	while turn == "black"
		board.move_made = false
		puts "BLACKS'S MOVE!"
		print "move from: "
		move_from = gets.chomp
		if move_from == "quit"
			turn = "orange"
			break
		end
		moves = move_from.split(" ")
		if moves[0].to_i > 8 || moves[1].to_i > 8
			puts "Invalid Move!"
			board.print_board
		elsif !board.board[moves[0].to_i][moves[1].to_i].nil? && board.board[moves[0].to_i][moves[1].to_i].color == "white"
			puts "You can't move your opponents pieces!"
		else
			print "move to: "
			move_to = gets.chomp
			board.move_piece(move_from,move_to)
			if board.move_made
				turn = "white"
			end
		end
	end
end


