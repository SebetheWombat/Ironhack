require 'colorize'

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

	def move_piece(movefrom,moveto)
		piece = nil
		frommoves = movefrom.split(" ")
		tomoves = moveto.split(" ")
		tox = tomoves[0].to_i
		toy = tomoves[1].to_i
		fox = frommoves[0].to_i
		foy = frommoves[1].to_i

		if can_move?(fox,foy,tox,toy) == "yes"
			tmp = @board[fox][foy]
			@board[tox][toy] = tmp
			@board[tox][toy].x = tox
			@board[tox][toy].y = toy
			@board[fox][foy] = nil
		else
			puts "Invalid Move!"
		end
		print_board

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
			puts "+----+----+----+----+----+----+----+----+"
			for r in 0..newBoard.length-2
			 for c in 1..newBoard[r].length-1
			 	if newBoard[r][c].nil?
			 		print "|    "
			 	elsif newBoard[r][c].color == 'white'
			 		print "| #{newBoard[r][c].name.white} "
			 	else
			 		print "| #{newBoard[r][c].name.blue} "
			 	end
			 end
			 puts "|"
			 puts "+----+----+----+----+----+----+----+----+"	
		end
		puts ""
	end

end
