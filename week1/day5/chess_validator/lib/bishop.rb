class Bishop < Piece

	def can_move?(new_x,new_y)
		if (new_x - @x).abs == (new_y - @y).abs
			return "yes"
		else
			return "no"
		end
	end
end