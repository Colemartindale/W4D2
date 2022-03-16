module Slideable

    HORIZONTAL_AND_VERTICAL_DIRS = [[0, 1], [1, 0], [0, -1], [-1, 0]]

    DIAGONAL_DIRS = [[1, 1], [-1, -1], [-1, 1], [1, -1]]
    
    def moves
        moves = []
        move_dirs.each {|dir| moves.concat(grow_unblocked_moves_in_dir(dir, pos)) }
        moves
    end

    def move_dirs
        DIAGONAL_DIRS + HORIZONTAL_AND_VERTICAL_DIRS
    end

    def grow_unblocked_moves_in_dir(dir, pos)
        dx, dy = dir
        x, y = pos
        result = []
        until !valid_move?
            x += dx
            y += dy
            result << [x, y]
        end
        result
    end

end