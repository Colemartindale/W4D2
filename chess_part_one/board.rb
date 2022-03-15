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
                (0...row.length).each { |j| row[j] = nullpiece }
            else
                (0...row.length).each { |k| row[k] = piece }
            end
        end 
        p rows     
    end


end