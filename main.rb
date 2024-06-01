 class Board
   attr_writer :one, :two, :three, :four, :five, :six, :seven, :eight, :nine
    def initialize(*moves)
        @one = moves[0]
        @two = moves[1]
        @three = moves[2]
        @four = moves[3]
        @five = moves[4]
        @six = moves[5]
        @seven = moves[6]
        @eight = moves[7]
        @nine = moves[8]
    end

    def display_board
      first_row = "#{@one} | #{@two} | #{@three}"
      horiz_line1 = "\u2500\u2500+\u2500\u2500\u2500+\u2500\u2500"
      second_row = "#{@four} | #{@five} | #{@six}" 
      horiz_line12 = "\u2500\u2500+\u2500\u2500\u2500+\u2500\u2500"
      third_row =    "#{@seven} | #{@eight} | #{@nine}" 
      extra_space = "-------------------------"

    puts first_row
    puts horiz_line1
    puts second_row
    puts horiz_line12
    puts third_row
    puts extra_space
    end

 end

class Players 
   attr_accessor :player_moves
   def initialize(value)
      @player_moves = value
   end
end

player1 = Players.new("O")
player2 = Players.new("X")


board = Board.new(1,2,3,4,5,6,7,8,9)
 
board.display_board


count = 9

until count == 0
  user_inpt = gets.chomp.to_i
  if count.odd?
   if user_inpt == 1
      board.one = player1.player_moves
   elsif user_inpt == 3
      board.three = player1.player_moves
   elsif user_inpt == 5
      board.five = player1.player_moves
   elsif user_inpt == 7
      board.seven = player1.player_moves
   elsif user_inpt == 9
      board.nine = player1.player_moves
   elsif user_inpt == 2
      board.two = player1.player_moves
   elsif user_inpt == 4
      board.four = player1.player_moves
   elsif user_inpt == 6
      board.six = player1.player_moves
   elsif user_inpt == 8
      board.eight = player1.player_moves
   end
else
   if user_inpt == 2
      board.two = player2.player_moves
   elsif user_inpt == 4
      board.four = player2.player_moves
   elsif user_inpt == 6
      board.six = player2.player_moves
   elsif user_inpt == 8
      board.eight = player2.player_moves
   elsif user_inpt == 1
      board.one = player2.player_moves
   elsif user_inpt == 3
      board.three = player2.player_moves
   elsif user_inpt == 5
      board.five = player2.player_moves
   elsif user_inpt == 7
      board.seven = player2.player_moves
   elsif user_inpt == 9
      board.nine = player2.player_moves
   end
end
board.display_board
count -= 1

end
