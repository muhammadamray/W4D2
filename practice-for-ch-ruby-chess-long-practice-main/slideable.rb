module Slideable
    HORIZONTAL_DIRS = [ [0,1], [1, 0], [-1,0], [0, -1] ]


    def horizontal_dirs
        HORIZONTAL_DIRS
    end 

    def moves 
        moves = []
        horizontal_dirs.each do |hor_dir|
            grow_unblocked_moves_in_dir(hor_dir)
        end 
    end 


    private 

    def grow_unblocked_moves_in_dir(dir)
        moves_in_dir = []
        cur_pos = self.pos 
        cur_x, cur_y = cur_pos
        dx, dy = dir

        loop do 

            next_pos = [cur_x + dx, cur_y + dy]

            if !self.board.valid_pos?(next_pos)
                break
            end 

            if self.board[next_pos].empty?
                moves_in_dir << next_pos 
            else 
                if self.board[next_pos].color != self.color
                    moves_in_dir << next_pos
                    break
                else 
                    break
                end 
            end 



        end 

    end 















end 