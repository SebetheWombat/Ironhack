class Rook
	attr_accessor :x, :y
	def initialize(x,y,color)
		@x = x
		@y = y
		@color = color
	end

	def can_move?(new_x,new_y)
		if new_x == @x || new_y == @y
			return "yes"
		else
			return "no"
		end
	end
end