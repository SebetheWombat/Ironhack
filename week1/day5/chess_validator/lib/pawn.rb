class Pawn
	attr_accessor :x, :y
	def initialize(x,y,color)
		@x = x
		@y = y
		@color = color
	end

	def can_move?(new_x,new_y)
		if new_x == @x && 
			(((@color == 'black' && (new_y == @y-1 || new_y==@y-2))|| 
				(@color == 'white' && (new_y == @y+1 || new_y==@y+2))))
			return "yes"
		else
			return "no"
		end
	end
end