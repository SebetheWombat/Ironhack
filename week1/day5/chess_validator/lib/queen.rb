class Queen
	attr_accessor :x, :y
	def initialize(x,y,color)
		@x = x
		@y = y
		@color = color
	end

	def can_move?(new_x,new_y)
		if (new_x == @x || new_y == @y) || (new_x - @x).abs == (new_y - @y).abs
			return "yes"
		else
			return "no"
		end
	end
end