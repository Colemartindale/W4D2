require_relative 'piece'
require_relative 'slideable'

class Bishop < Piece

    def symbol
        symbol = :B
    end

    def move_dirs
        DIAGONAL_DIRS
    end

    def to_s
        symbol
    end

end