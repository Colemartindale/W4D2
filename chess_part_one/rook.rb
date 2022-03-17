require_relative 'piece'
require_relative 'slideable'

class Rook < Piece
include Slideable

    def symbol
        symbol = :R
    end

    def move_dirs
        HORIZONTAL_AND_VERTICAL_DIRS
    end

    def to_s
        symbol
    end


end