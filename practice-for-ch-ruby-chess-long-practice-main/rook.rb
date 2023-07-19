require_relative "piece.rb"
 
class Rook < Piece
    include Slideable
  
    def initialize(color, board, pos)
      super
    end 
  
    def symbol
    end
  
  
    def move_dirs
      horizontal_dirs
    end




end 