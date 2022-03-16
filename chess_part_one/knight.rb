require_relative 'piece'

class Knight < Piece

    DIFFS = [[1, -2], [2, -1], [2, 1], [1, 2], [-1, 2], [-2, 1], [-2, -1], [-1, -2]]

    def symbol
        symbol = :H
    end

    def move_diffs
        DIFFS 
    end
end