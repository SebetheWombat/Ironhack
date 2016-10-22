class Pawn < Piece
	def can_move?(new_x,new_y)
		if new_x == @x && 
			(((@color == 'black' && (new_y == @y-1 ||(@y == 7 && new_y==@y-2)))|| 
				(@color == 'white' && (new_y == @y+1 ||( @y == 2 && new_y==@y+2)))))
			return "yes"
		else
			return "no"
		end
	end
end