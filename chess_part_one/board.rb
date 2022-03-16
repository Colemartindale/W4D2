require_relative "piece"
require_relative "nullpiece"
class Board
    
    attr_reader :nullpiece, :piece, :rows
    
    def initialize
        @rows = Array.new(8) { Array.new(8) }
        @nullpiece = NullPiece.new
        @piece = Piece.new
        self.fill_rows
    end

    def fill_rows
        rows.map.with_index do |row, i|
            if i.between?(2, 5)
                (0...row.length).each { |j| row[j] = nil } # change to nullpiece
            else
                (0...row.length).each { |k| row[k] = "p" } # change to piece
            end
        end 
       rows     
    end

    def [](pos)
       row, col = pos
       @rows[row][col]
    end

    def []=(pos, piece)
        row, col = pos
        @rows[row][col] = piece
    end

    def move_piece(color, start_pos, end_pos) 
        
        if self[start_pos] == nil #changet to nullpiece
            raise "there is no piece here"
        end
            
        # if self[end_pos] != valid_move?(end_pos)     # make valid_move?
        #     raise "cannot move here"
        # end

        self[end_pos] = self[start_pos]
        self[start_pos] = nil  #change to nullpiece
        p rows
    end


end