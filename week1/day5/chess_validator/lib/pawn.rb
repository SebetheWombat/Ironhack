class Pawn < Piece
	def can_move?(new_x,new_y,board)
		if new_x == @x && 
			(((@color == 'black' && (new_y == @y-1 ||(@y == 7 && new_y==@y-2)))|| 
				(@color == 'white' && (new_y == @y+1 ||( @y == 2 && new_y==@y+2)))))
			"yes"
		elsif (new_x == @x+1 || new_x == @x-1) && 
			((new_y == @y+1 && @color == "white") || (new_y == @y-1 && @color == "black")) &&
			!board[new_x][new_y].nil?
			"yes"
		else
			"no"
		end
	end
end