require_relative "piece.rb"

class Board 
    def initialize
        @rows = Array.new(8) { Array.new(8) }
        populate
    end

    def [](pos)
        row, col = pos 
        @rows[row][col]
    end

    def []=(pos, val)
        row, col = pos 
        @rows[row][col] = val
    end

    def move_piece(start_pos, end_pos)
        raise 'No piece at starting pos' if self[start_pos].empty?
        raise 'not a valid end pos' if !self.valid_pos?(end_pos)

        piece = self[start_pos]
        self[start_pos] = nil 
        self[end_pos] = piece
    end

    def valid_pos?(pos)
        pos.all? { |coord| coord.between?(0, 7) }
    end
    
    def add_piece(piece, pos)
        self[pos] = piece
    end

   
    def populate

        # Pawn starting Locations 
        (0..7).each do |col|
            Pawn.new(:black, self, [6, col])
            Pawn.new(:white, self, [1, col])
        end 

        #Pieces 
        (0..7).each do |col|
            Piece.new(:black, self, [7, col])
            Piece.new(:white, self, [0, col])
        end 







    end 






end

   