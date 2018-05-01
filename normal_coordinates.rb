class NormalCoordinates < Gosu::Window
	RECT_WIDTH = 5
	RECT_HEIGHT = 5
	RECT_COLOR = Gosu::Color::GREEN
	def initialize
		super(WINDOW_WIDTH, WINDOW_HEIGHT)
		self.caption = "Coordinate System Test - 2018-04-30"
		@node = CoordinateNode.new(WINDOW_WIDTH/2, WINDOW_HEIGHT/2, RECT_WIDTH, RECT_HEIGHT, RECT_COLOR, self)
		@node_holder = []
		@node_holder << @node
		plot_nodes_setup
	end

	def draw
		@node_holder.each{|i| i.draw}
		CoordinateNode.new(10, WINDOW_HEIGHT - 10, RECT_WIDTH, RECT_HEIGHT, Gosu::Color::RED, self).draw
	end

	def plot_nodes_setup()
	 	(0).upto(WINDOW_HEIGHT) do |x|
	 		@node_holder << CoordinateNode.new(x, WINDOW_HEIGHT - x, RECT_WIDTH, RECT_HEIGHT, RECT_COLOR, self)	 		
	 	end

	end


end