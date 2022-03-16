require_relative "piece"


class King < Piece

    DIFFS = [[0, 1], [1, 0], [0, -1], [-1, 0], [1, 1], [-1, -1], [-1, 1], [1, -1]]

    def symbol
       symbol = :K
    end

end