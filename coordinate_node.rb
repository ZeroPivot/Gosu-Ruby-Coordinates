
class CoordinateNode
 	#include Gosu
	def initialize(x,y,width,height, gosu_color, gosuwindow)
		@x, @y = x, y
		@width=width
		@height= height
		@color = gosu_color
	end

	def draw
		Gosu.draw_rect(@x - @width/2, @y - @height/2, @width, @height, @color)
	end

end