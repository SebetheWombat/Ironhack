require_relative "lib/king.rb"

# black_rook_left = Rook.new(1, 8, "black")
# board.add_piece(black_rook_left)
# white_rook_right = Rook.new(8, 1, "white")
# board.add_piece(white_rook_right)


# puts "Valid Rook movements"
# puts "--------------------"

# p black_rook_left.can_move?(1, 5) == "yes"
# p black_rook_left.can_move?(5, 8) == "yes"
# p white_rook_right.can_move?(8, 3) == "yes"
# p white_rook_right.can_move?(2, 1) == "yes"


# puts "Invalid Rook movements"
# puts "----------------------"

# p black_rook_left.can_move?(2, 7) == "no"
# p black_rook_left.can_move?(2, 5) == "no"
# p white_rook_right.can_move?(3, 5) == "no"
# p white_rook_right.can_move?(5, 6) == "no"

# puts ""

black_king = King.new(5, 8, "black")
# board.add_piece(black_king)
white_king = King.new(5, 1, "white")
# board.add_piece(white_king)


# puts "Valid King movements"
# puts "--------------------"

# p black_king.can_move?(5, 7) == "yes"
# p black_king.can_move?(6, 7) == "yes"
# p white_king.can_move?(6, 2) == "yes"
# p white_king.can_move?(5, 2) == "yes"
# p white_king.can_move?(4, 1) == "yes"


# puts "Invalid King movements"
# puts "----------------------"

p black_king.can_move?(5, 4) == "no"
p black_king.can_move?(7, 5) == "no"
p white_king.can_move?(7, 2) == "no"
p white_king.can_move?(1, 5) == "no"

# puts ""

# knight = Knight.new(4,4,'black')
# board.add_piece(knight)

# puts "Valid Knight movements"
# puts "--------------------"

# puts knight.can_move?(5,6) == "yes"
# puts knight.can_move?(3,6) == "yes"
# puts knight.can_move?(6,5) == "yes"
# puts knight.can_move?(6,3) == "yes"
# puts knight.can_move?(3,2) == "yes"
# puts knight.can_move?(2,3) == "yes"

# puts "Invalid Knight movements"
# puts "----------------------"

# puts knight.can_move?(5,5) == "no"
# puts knight.can_move?(6,6) == "no"
# puts knight.can_move?(8,1) == "no"
# puts knight.can_move?(6,4) == "no"

# puts ""

# bishop = Bishop.new(7,7,'white')
# board.add_piece(bishop)

# puts "Valid Bishop movements"
# puts "----------------------"

# puts bishop.can_move?(8,8) == "yes"
# puts bishop.can_move?(1,1) == "yes"
# puts bishop.can_move?(6,8) == "yes"
# puts bishop.can_move?(8,6) == "yes"

# puts "Invalid Bishop movements"
# puts "----------------------"

# puts bishop.can_move?(7,1) == "no"
# puts bishop.can_move?(1,7) == "no"
# puts bishop.can_move?(6,5) == "no"

# puts ""

# queen = Queen.new(4,5,'black')
# board.add_piece(queen)

# puts "Valid Queen movements"
# puts "----------------------"

# puts queen.can_move?(4,8) == "yes"
# puts queen.can_move?(7,5) == "yes"
# puts queen.can_move?(2,5) == "yes"
# puts queen.can_move?(4,1) == "yes"
# puts queen.can_move?(7,8) == "yes"
# puts queen.can_move?(1,8) == "yes"

# puts "Invalid Queen movements"
# puts "----------------------"

# puts queen.can_move?(3,3) == "no"
# puts queen.can_move?(5,8) == "no"

# puts ""

# b_pawn = Pawn.new(1,7,"black")
# board.add_piece(b_pawn)
# w_pawn = Pawn.new(1,2,"white")
# board.add_piece(w_pawn)

# puts "Valid Black Pawn movements"
# puts "----------------------"

# puts b_pawn.can_move?(1,6) == "yes"
# puts b_pawn.can_move?(1,5) == "yes"

# puts "Invalid Black Pawn movements"
# puts "----------------------"

# puts b_pawn.can_move?(1,4) == "no"
# puts b_pawn.can_move?(2,7) == "no"
# puts b_pawn.can_move?(1,8) == "no"

# puts ""

# puts "Valid White Pawn movements"
# puts "----------------------"

# puts w_pawn.can_move?(1,3) == "yes"
# puts w_pawn.can_move?(1,4) == "yes"

# puts "Invalid White Pawn movements"
# puts "----------------------"

# puts w_pawn.can_move?(1,5) == "no"
# puts w_pawn.can_move?(2,2) == "no"
# puts w_pawn.can_move?(1,1) == "no"

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