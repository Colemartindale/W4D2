class Piece


    attr_reader :color, :board, :pos
    def initialize(color, board, pos)
        @color = color #:black or :white
        @board = board
        @pos = []        
    end

    def valid_move?
        # opposing color
        # blocked by your own color
        # end of board
    end

    def to_s
        "#{symbol}"
    end

    def empty?
        false
    end

end