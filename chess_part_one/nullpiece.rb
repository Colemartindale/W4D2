require_relative 'piece'
require_relative 'singleton'

class NullPiece < Piece

    def initialize


    end

    def empty?
        true
    end

end