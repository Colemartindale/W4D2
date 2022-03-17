require_relative "piece"


class King < Piece

    DIFFS = [[0, 1], [1, 0], [0, -1], [-1, 0], [1, 1], [-1, -1], [-1, 1], [1, -1]]

    def symbol
       symbol = :K
    end

    def move_diffs
        DIFFS
    end

    def to_s
        symbol
    end

end