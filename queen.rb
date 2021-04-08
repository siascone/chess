require_relative 'piece'

class Queen < Piece
    def symbol
        symboles['queen'].colorize(color)
    end
end