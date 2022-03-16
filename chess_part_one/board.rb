require_relative "piece"
require_relative "nullpiece"
require_relative 'rook'
require_relative 'knight'
require_relative 'pawn'
require_relative 'queen'
require_relative 'king'
require_relative 'bishop'
class Board
    
    attr_reader :nullpiece, :rows
    
    def initialize
        @rows = Array.new(8) { Array.new(8) }
        @nullpiece = NullPiece.new
        self.populate_board
    end

    def fill_rows

        rows.map.with_index do |row, i|
            if i.between?(2, 5)
                (0...row.length).each { |i| row[i] = NullPiece.new }
            end
        end 

        # syms = []
        # instances.each do |inst|
        #     syms << inst.map {|el| el.symbol }
        # end
        #code above was to make sure our population was working
        
        instances = populate_board
        @rows[0] = instances[0]
        @rows[1] = instances[1]
        @rows[6] = instances[2]
        @rows[7] = instances[3]
        #rows

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
        rows
    end

    def valid_move?(end_pos, color)
        
        x, y = end_pos
        if !(0..7).include?(x) || !(0..7).include?(y)
            return false
        end

        if  @rows[end_pos].color == piece.color
            return false
        end

        true
    end

    def populate_board
        back_line = [Rook, Knight, Bishop, Queen, King, Bishop, Knight, Rook]
        row_zero = []
        row_one = []
        row_six = []
        row_seven = []

        back_line.each_with_index do |piece, i|
            row_zero << piece.new(:black, self, [0, i]) 
            row_one << Pawn.new(:black, self, [1, i])
            row_six << Pawn.new(:white, self, [6, i])
            row_seven << piece.new(:white, self, [7, i])
        end

        instances = [row_zero, row_one, row_six, row_seven] 

    end

    def in_check?(color)
        bad_boys = []
        self.rows.each do |row|
            row.each do |piece|
                if piece.color != color && !piece.empty?
                    bad_boys << piece
                end
            end
        end

        bad_boys.moves.each do |moves|
            if moves.include?(find_king)  
               return true 
            end
        end
        false
    end

    def find_king(color)
        rows.each_with_index do |row, i|
            row.each_with_index do |val, j|
                if rows[i][j].instance_of?(King) && rows[i][j].color == color
                    return [i, j] 
                end
            end
        end
    end


    # def render
    #     puts "--------"
    #     @rows.each do |row|
    #         puts row.map { |el| el.symbol }
    #     end
        
    # end



end


while false
    load 'board.rb'
    b = Board.new
    b.fill_rows
    b.render

end