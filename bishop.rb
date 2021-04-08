require_relative 'piece'

class Bishop < Piece
    def symbol
        symboles['bishop'].colorize(color)
    end
end