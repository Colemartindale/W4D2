require_relative 'piece'
require_relative 'singleton'

class NullPiece < Piece
    include Singleton

    attr_reader :color, :symbol

    def initialize
        @color = :none
        @symbol = ' '
    end

    def empty?
        true
    end

end