def game_board(*args)  #Board for showcase

   first_row = "#{args[0]} | #{args[1]} | #{args[2]}"
   horiz_line1 = "\u2500\u2500+\u2500\u2500\u2500+\u2500\u2500"
   second_row = "#{args[3]} | #{args[4]} | #{args[5]}" 
   horiz_line12 = "\u2500\u2500+\u2500\u2500\u2500+\u2500\u2500"
   third_row =    "#{args[6]} | #{args[7]} | #{args[8]}" 
   
    puts first_row
    puts horiz_line1
    puts second_row
    puts horiz_line12
    puts third_row
 end





 game_board(1,2,3,4,5,6,7,8,9)