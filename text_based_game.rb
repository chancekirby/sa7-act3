player_score = 0
puts "Welcome to the Adventure Game!\nYou have #{player_score} points."

while true
    print "Choose a room (1-3) to enter or 'exit' to end the game:"
    input = gets.downcase.chomp


    if input == '1'
        player_score += 5
        puts "You entered room 1 and earned 5 points"
        puts
    elsif input == '2'
        player_score += 10
        puts "You entered room 2 and earned 10 points"
        puts
    elsif input == '3'
        player_score += 15
        puts "You entered room 3 and earned 15 points"
        puts
    elsif input == 'exit'
        puts "Game over! You collected a total of #{player_score} points."
        break
    else
        puts "Invalid input..."
        puts
    end 

end