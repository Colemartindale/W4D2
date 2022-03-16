class Piece

    attr_reader :color, :board, :pos

    def initialize(color, board, pos)
        @color = color 
        @board = board
        @pos = []        
    end

    def pos=(val)
        @pos = val
    end

    def valid_moves
        
    end

    def to_s
        self.symbol.to_s
    end

    def empty?
        false
    end

    def move_into_check(end_pos) 
        #check where the king is using find king method in board
        #move the we do doesnt leave us in check
        
        


    end

end