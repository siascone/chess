require_relative 'piece'

class King < Piece
    def symbol
        symboles['king'].colorize(color)
    end
end