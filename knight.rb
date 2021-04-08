require_relative 'piece'

class Knight < Piece
    def symbol
        symboles['knight'].colorize(color)
    end
end