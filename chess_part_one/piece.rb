class Piece

    attr_reader :color, :board, :pos

    def initialize(color, board, pos)
        @color = color #:black or :white
        @board = board
        @pos = []        
    end

    def valid_moves
        pos
    end

    def to_s
        self.symbol.to_s
    end

    def empty?
        false
    end

end