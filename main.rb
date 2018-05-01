require 'gosu'
#require 'rmagick'
#require 'twitter'
require_relative 'normal_coordinates'
require_relative 'coordinate_node'
WINDOW_WIDTH=1000
WINDOW_HEIGHT=1000


if !defined? Ocra
	NormalCoordinates.new.show
end