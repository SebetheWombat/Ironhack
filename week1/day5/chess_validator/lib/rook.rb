class Rook < Piece
	def can_move?(new_x,new_y)
		if new_x == @x || new_y == @y
			return "yes"
		else
			return "no"
		end
	end
end