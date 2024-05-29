def game_board
   for i in (0...5)
    if i.odd? 
        puts "\u2500\u2500+\u2500\u2500\u2500+\u2500\u2500"
    else
        puts "  |   |  "      
        end
   end
end

game_board()