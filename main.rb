class Players
    
end

player1 = Players.new()
player2 = Players.new()

def game_board(first,position)
   for i in (0...5)
    if i.odd? 
        puts "\u2500\u2500+\u2500\u2500\u2500+\u2500\u2500"
    elsif i == position
        puts "x | #{first} | x "
    else
        puts "  | #{first} |  "      
        end
   end
end

game_board('O',4)