class Board
	attr_accessor :board
	def initialize()
		@board = [[],[],[],[],[],[],[],[],[]]
	end

	def add_piece(piece)
		@board[piece.x][piece.y] = piece
	end

	def can_move?(startx,starty,endx,endy)
		if @board[startx][starty].nil? || endx > 8 || endy > 8 || (startx == endx && starty == endy)
			"no"
		else
			@board[startx][starty].can_move?(endx,endy)
		end
	end

	def print_board
			puts ""
			len = @board.length
			newBoard = [[],[],[],[],[],[],[],[],[]]
			for r in 0..len/2
				for c in 0..len-r-1
					tmp = @board[r][c]
					newBoard[r][c] = @board[c][len-1-r]
					newBoard[c][len-1-r] = @board[len-1-r][len-1-c]
					newBoard[len-1-r][len-1-c] = @board[len-1-c][r]
					newBoard[len-1-c][r] = tmp
				end
			end
			for r in 0..newBoard.length-2
			 for c in 1..newBoard[r].length-1
			 	if newBoard[r][c].nil?
			 		print "|__"
			 	else
			 		print "|#{newBoard[r][c].name}"
			 	end
			 end
			 puts "|"			
		end
	end

end
