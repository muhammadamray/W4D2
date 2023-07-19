class Board 
    def initialize
        @rows = Array.new(8) { Array.new(8, "_") }
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
        rasie 'not a valid end pos' if !self.valid_pos?(end_pos)

        
        
    end

    def valid_pos?(pos)
        pos.all? { |coord| coord.between?(0, 7) }
    end
    
    def add_piece(piece, pos)
        self[pos] = piece
    end









end

   