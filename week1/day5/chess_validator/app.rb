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

puts "Valid Board movements"
puts "----------------------"
puts board.can_move?(1,8,1,5) == "yes"
puts board.can_move?(8,1,8,8) == "yes"
puts board.can_move?(1,7,1,6) == "yes"
puts board.can_move?(1,7,1,5) == "yes"
puts board.can_move?(2,8,3,6) == "yes"
puts board.can_move?(3,8,8,3) == "yes"
puts board.can_move?(4,8,1,8) == "yes"
puts board.can_move?(5,8,6,7) == "yes"
puts board.can_move?(1,1,8,1) == "yes"


puts "Invalid Board movements"
puts "----------------------"

puts board.can_move?(3,3,4,4) == "no"
puts board.can_move?(1,8,1,10) == "no"
puts board.can_move?(1,7,1,2) == "no"
puts board.can_move?(2,8,6,4) == "no"

board.print_board


2.times do 
	f = ""
	t = ""
	print "move from: "
	f = gets.chomp
	print "move to: "
	t = gets.chomp
	board.move_piece(f,t)
end


