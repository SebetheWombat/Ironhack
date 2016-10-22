class Piece
	attr_accessor :x, :y, :name
	def initialize(x,y,color,name)
		@x = x
		@y = y
		@color = color
		@name = name
	end
end