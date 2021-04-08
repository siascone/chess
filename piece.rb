require 'colorize'
require_relative 'symboles'

class Piece 
    include Symboles
    attr_reader :color, :board
    attr_accessor :pos

    def initialize(color, board, pos)
        @color = color
        @board = board
        @pos = pos
    end

    def to_s 
        " #{symbol} "
    end

    def empty?
        false
    end

    def valid_moves

    end

    def symbol
        :P
        # raise NotImplementedError
    end

    private
    def move_into_check?(end_pos)

    end
end