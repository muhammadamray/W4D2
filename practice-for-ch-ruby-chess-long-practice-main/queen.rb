require_relative "piece.rb"
 
class Queen < Piece
    include Slideable
  
    def initialize(color, board, pos)
      super
    end 
  
    def symbol
      color == :white # color and what it looks like? 
    end
  
  
    def move_dirs
      diagonal_dirs && horizontal_dirs
    end


end 