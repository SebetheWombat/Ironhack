class King < Piece

	def can_move?(new_x,new_y)
		if new_y > @y + 1 || new_x > @x + 1 || new_y < @y - 1 || new_x < @x - 1
			return "no"
		else
			return "yes"
		end
	end
end