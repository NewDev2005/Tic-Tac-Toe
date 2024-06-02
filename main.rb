 class Board
   attr_writer :one, :two, :three, :four, :five, :six, :seven, :eight, :nine, :text
    def initialize(text,*moves)
        @one = moves[0]
        @two = moves[1]
        @three = moves[2]
        @four = moves[3]
        @five = moves[4]
        @six = moves[5]
        @seven = moves[6]
        @eight = moves[7]
        @nine = moves[8]
        @text = text
    end

    def display_board
      first_row = "#{@one} | #{@two} | #{@three}"
      horiz_line1 = "\u2500\u2500+\u2500\u2500\u2500+\u2500\u2500"
      second_row = "#{@four} | #{@five} | #{@six}" 
      third_row =    "#{@seven} | #{@eight} | #{@nine}" 
      new_line  = "\n"

    puts first_row
    puts horiz_line1
    puts second_row
    puts horiz_line1
    puts third_row
    puts new_line
    end

    def game_result
      if [@one,@two,@three] == %W[X X X] ||  [@one,@two,@three] == %W[O O O]
         puts "\n"
         puts @text
         return true
      elsif [@four,@five,@six] == %W[X X X] || [@four,@five,@six] == %W[O O O]
         puts "\n"
         puts @text
         return true
      elsif [@seven,@eight,@nine] == %W[X X X] ||  [@seven,@eight,@nine] == %W[O O O]
         puts "\n"
         puts @text
         return true
      elsif [@one,@four,@seven] == %W[X X X] ||  [@one,@four,@seven] == %W[O O O]
         puts "\n"
         puts @text
         return true
      elsif [@two,@five,@eight] == %W[X X X] || [@two,@five,@eight] == %W[O O O]
         puts "\n"
         puts @text
         return true
      elsif [@three,@six,@nine] == %W[X X X] || [@three,@six,@nine] == %W[O O O]
         puts "\n"
         puts @text
         return true
      elsif [@one,@five,@nine] == %W[X X X] || [@one,@five,@nine] == %W[O O O]
         puts "\n"
         puts @text
         return true
      elsif [@three,@five,@seven] == %W[X X X] || [@three,@five,@seven] == %W[O O O]
         puts "\n"
         puts @text
         return true
      end
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


board = Board.new("",1,2,3,4,5,6,7,8,9)
board.display_board

count = 9

until count == 0
  user_inpt = gets.chomp.to_i
  puts "\n"
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

if count.odd?
   board.text = "Player1 Won the game"
else 
   board.text = "player2 Won the game"
end

board.display_board
count -= 1
break if board.game_result == true
end
