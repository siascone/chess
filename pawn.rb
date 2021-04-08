require_relative 'piece'

class Pawn < Piece
    def symbol
        symboles['pawn'].colorize(color)
    end
end