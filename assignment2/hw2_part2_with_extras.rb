# ###################################################################################################################
# ---------------------------------------- START OF QUESTION 2 WIT EXTRAS  ------------------------------------------
# ###################################################################################################################

# Guessing Game:
# Generate a random number between 1 and 100 (including 1 and 100).
# Ask the user to guess the number, then tell them whether they guessed is:
#   - too low, and print out the remaining tries.
#   - too high, and print out the remaining tries.
#   - exactly right, and print out "Congratulations! You guessed the exact number in n tries"
#     and if the user exhausts all tries then print out "Sorry, You lost!"

# Criteria:
#   - Users have 10 tries to guess the number.
#   - When the game ends (either won or lost), ask the user if he/she wants to play
#     again. (`y` or `yes` to continue).

# Extras:
#   - Ask the user in the beginning to enter the difficulty level of the game, and
#     accordingly determines the number of tries:
#       > 3 tries for Hard level .
#       > 6 tries for Intermediate level .
#       > 10 tries for Easy level .
#   - After the user selects exit option, print out these statistics:
#       > how many times played?
#       > how many times won?

# ----------------------------------------------------------------------------------------------------

play_again = "Y"
difficulty_level = 0
played_times = 0
won_times =0
flag = false # to exit the two inner loop if the user win

while play_again.chomp.casecmp?("Y")
    played_times+=1
    # Generate a random number between 1 and 100 (including 1 and 100).
    generated_number = rand(1..100)
    print "generated_number #{generated_number}\n" #-- JUST FOR DEBUGGING :)

    # start of program 
    puts "########################################################################"
    puts ":: GUSSING GAME ::"
    puts "   # Determine the difficulty level of the game"
    puts "   # The entered number must be is this range 1 - 100 (inclusive)"
    puts "########################################################################"
    while true
        real_tries = 0
        # Ask the user in the beginning to enter the difficulty level of the game
        puts "What is the preffered difficulty level ? "
        puts "    - (1) Hard level"
        puts "    - (2) Intermediate level"
        print "    - (3) Easy level\nYour Choice : "
        difficulty_level = gets.to_i

        case difficulty_level
        when 1..3
            # determines the number of tries
            if difficulty_level==1
                puts "You have (3) tries"
                tries_number = 3
            elsif difficulty_level==2
                puts "You have (6) tries"
                tries_number = 6
            else
                puts "You have (10) tries"
                tries_number = 10
            end

            while true
                # Ask the user to guess the number
                print "Enter number : "
                user_guess = gets.to_i

                case user_guess
                when 1..100
                    # decrement number of tries by 1
                    tries_number-=1
                    real_tries+=1
                    # check if too low, and print out the remaining tries
                    if user_guess < generated_number
                        puts "You guessed too low :( , the remaining tries is #{tries_number}"
                    elsif user_guess > generated_number
                        puts "You guessed too high :( , the remaining tries is #{tries_number}" 
                    else
                        puts "Congratulations! You guessed the exact number in #{real_tries} tries"
                        won_times +=1
                        flag = true
                        break
                    end

                    if tries_number == 0
                        puts "Sorry, You lost! :("
                        break
                    end
                else
                    puts "Please, Enter number within this range 1 - 100 (inclusive)" 
                end
            end
            if tries_number == 0 || flag
                break
            end
        else
            puts "Choose difficulty level from 1 - 3"
        end 
    end

    print "Do you wants to play again ? ( Y / N ) : "
    play_again = gets.to_s.upcase
    if !play_again.chomp.casecmp?("y")
        puts "Times you Played : #{played_times} times"
        puts "Times you won : #{won_times} times"
        print "Good Bye :)"
    end
end

# ###################################################################################################################
# ----------------------------------------- END OF QUESTION 2 WIT EXTRAS  -------------------------------------------
# ###################################################################################################################

