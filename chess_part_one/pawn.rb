require_relative 'piece'

class Pawn < Piece

    def symbol 
        symbol = :P
    end

    def at_start_row?
        x, y = pos
        if self.color == :white && y == 6
            return true
        elsif y == 1
            return true
        else
            false
        end
    end

    def forward_dir
        if self.color == :black
            return 1
        else
            return -1
        end
    end

    def forward_steps
        x, y = pos
        steps = []
        if forward_dir == 1 
            if at_start_row?
                pos1 = [x, y + 2]                
                steps << pos1
                pos2 = [x, y + 1]
                steps << pos2
            else
                pos2 = [x, y + 1]
                steps << pos2
            end
        end

        if forward_dir == -1 
            if at_start_row?
                pos1 = [x, y - 2]                
                steps << pos1
                pos2 = [x, y - 1]
                steps << pos2
            else
                pos2 = [x, y - 1]
                steps << pos2
            end
        end
        steps
    end

    def moves
        foward_steps + side_attacks
    end

    def side_attacks
        x, y = pos
        attacks = []
        if color == :black && rows[x + 1][y + 1].color == :white
            attacks << [x + 1, y + 1]
        elsif color == :black && rows[x -1][y + 1].color == :white
            attacks << [x -1, y + 1]
        end

        if color == :white && rows[x + 1][y - 1].color == :black
            attacks << [x + 1, y - 1]
        elsif color == :white && rows[x -1][y - 1].color == :black
            attacks << [x - 1, y - 1]
        end

        attacks
    end


end

