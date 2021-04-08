require_relative 'piece'

class Rook < Piece
    def symbol
        symboles['rook'].colorize(color)
    end
end