module Slideable

    HORIZONTAL_AND_VERTICAL_DIRS = [[0, 1], [1, 0], [0, -1], [-1, 0]]

    DIAGONAL_DIRS = [[1, 1], [-1, -1], [-1, 1], [1, -1]]
    
    def moves
        moves = []
        # curr_pos = @pos
        move_dirs.each {|dir| moves.concat(grow_unblocked_moves_in_dir(dir)) }
    end

    def move_dirs
        DIAGONAL_DIRS + HORIZONTAL_AND_VERTICAL_DIRS
    end

    def grow_unblocked_moves_in_dir(dir)
        dx, dy = dir
        result = []
        # end of board, must stop
        # our color, cannot take that space, must stop
        # other color pieces, when we hit those, can take that space, but can't go any further
        x, y = pos
        until !valid_move?
            x += dx
            y += dy
            result << [x, y]
        end
        result
    end

end