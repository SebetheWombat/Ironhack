class Board
	attr_accessor :board
	def initialize()
		@board = [0,[],[],[],[],[],[],[],[]]
	end

	def add_piece(piece)
		@board[piece.x][piece.y] = piece
	end

	def can_move?(startx,starty,endx,endy)
		if @board[startx][starty].nil? || endx > 8 || endy > 8 || (startx == endx && starty == endy)
			return "no"
		else
			return @board[startx][starty].can_move?(endx,endy)
		end
	end
end