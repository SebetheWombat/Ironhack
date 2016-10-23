require 'colorize'

class Board
	attr_accessor :board, :move_made
	def initialize()
		@board = [[],[],[],[],[],[],[],[],[]]
		@move_made = false
	end

	def add_piece(piece)
		@board[piece.x][piece.y] = piece
	end

	def can_move?(startx,starty,endx,endy)
		if @board[startx][starty].nil? || endx > 8 || endy > 8 || (startx == endx && starty == endy)
			"no"
		elsif @board[startx][starty].name == "P "
			@board[startx][starty].can_move?(endx,endy,@board)
		else
			@board[startx][starty].can_move?(endx,endy)
		end
	end

	def check_path(startx,starty,endx,endy)
		#Piece is moving vertically
		if startx == endx
			cur_y = starty
			while cur_y != endy
				if !@board[startx][cur_y].nil? && cur_y != starty
					return "Path blocked" 
				end
				if endy > starty
					cur_y += 1
				else
					cur_y -= 1
				end
			end
		
		#Piece moves horizontally
		elsif starty == endy
			cur_x = startx
			while cur_x != endx
				if !@board[cur_x][starty].nil? && cur_x != startx
					return "Path blocked" 
				end
				if endx > startx
					cur_x += 1
				else
					cur_x -= 1
				end
			end
		#Piece is moving diagonally
		else
			cur_x = startx + 1
			if endx < startx
				cur_x = startx - 1
			end
			cur_y = starty
			if endy < starty
				cur_y = starty - 1
			end
			while cur_x != endx
				while cur_y != endy
					if (cur_x - startx).abs == (cur_y-starty).abs
						if !@board[cur_x][cur_y].nil?
							return "Path blocked"
						end
					
					end
					if endy > starty
						cur_y += 1
					else
						cur_y -= 1
					end
				end
				if endx > startx
					cur_x += 1
				else
					cur_x -= 1
				end
			end
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
			if check_path(fox,foy,tox,toy) == "Path blocked"
				puts "Path blocked!"
			elsif @board[tox][toy].nil?
				swap(fox,foy,tox,toy)
				@move_made = true
			elsif @board[tox][toy].color == @board[fox][foy].color
				puts "Invalid Move!"
			else
				puts "#{@board[fox][foy].color.upcase} #{@board[fox][foy].name}TAKES #{@board[tox][toy].color.upcase} #{@board[tox][toy].name}"
				swap(fox,foy,tox,toy)
				@move_made = true
			end
		else
			puts "Invalid Move!"
		end
		print_board
	end

	def swap(a,b,x,y)
		tmp = @board[a][b]
		@board[x][y] = tmp
		@board[x][y].x = x
		@board[x][y].y = y
		@board[a][b] = nil
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
			puts "--+----+----+----+----+----+----+----+----+"
			for r in 0..newBoard.length-2
				print "#{(8-r).to_s.yellow} "
			 for c in 1..newBoard[r].length-1

			 	if newBoard[r][c].nil?
			 		print "|    "
			 	elsif newBoard[r][c].color == 'white'
			 		print "| #{newBoard[r][c].name.white} "
			 	else
			 		print "| #{newBoard[r][c].name.red} "
			 	end
			 end
			 puts "|"
			 puts "--+----+----+----+----+----+----+----+----+"	
		end
		puts "  | #{"1".yellow}  | #{"2".yellow}  | #{"3".yellow}  | #{"4".yellow}  | #{"5".yellow}  | #{"6".yellow}  | #{"7".yellow}  | #{"8".yellow}  |"
		puts ""
	end

end
