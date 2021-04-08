require_relative "piece"
require_relative "null"
require_relative "king"
require_relative "queen"
require_relative "knight"
require_relative "bishop"
require_relative "rook"
require_relative "pawn"

class Board 

    attr_reader :grid
    def initialize
        @grid = Array.new(8) { Array.new(8, Null.instance) }
        populate
    end

    def populate 
        place_back_rows
        
        place_pawns
    end

    def place_back_rows
        pieces = [Rook, Knight, Bishop, Queen, King, Bishop, Knight, Rook]
        i = 0
        pieces.each do |piece_class|
            @grid[0][i] = piece_class.new(:white, self, [0, i])
            @grid[7][i] = piece_class.new(:red, self, [7, i])
            i += 1
        end
    end

    def place_pawns
        grid[1].each_with_index do |space, i|
            grid[1][i] = Pawn.new(:white, self, [1, i])
        end

        grid[6].each_with_index do |space, i|
            grid[6][i] = Pawn.new(:red, self, [6, i])
        end
    end

    def print_board
        y = 0
        puts "  #{[0, 1, 2, 3, 4, 5, 6, 7].join(" ")}"
        grid.each_with_index do |row, i|
            row.each_with_index do |piece, j|
                if j == 0
                    print "#{i} #{piece.symbol} "
                elsif j == 7
                    print "#{piece.symbol}"
                else
                    print "#{piece.symbol} "
                end
            end
            puts
        end
    end

end

board = Board.new
board.print_board