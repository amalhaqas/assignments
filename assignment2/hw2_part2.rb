# ###################################################################################################################
# -------------------------------------- START OF QUESTION 2 WITHOUT EXTRAS  ----------------------------------------
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

while play_again.chomp.casecmp?("Y")

    # Generate a random number between 1 and 100 (including 1 and 100).
    generated_number = rand(1..100)
    # print "generated_number #{generated_number}\n" -- JUST FOR DEBUGGING :)

    # determines the number of tries
    tries_number = 10
    puts "########################################################################"
    puts ":: GUSSING GAME INSTRUCTIONS ::"
    puts "   # You have #{tries_number} tries to guess"
    puts "   # The entered number must be is this range 1 - 100 (inclusive)"
    puts "########################################################################"

    while true

        # Ask the user to guess the number
        print "Enter number : "
        user_guess = gets.to_i

        case user_guess
        when 1..100
            # decrement number of tries by 1
            tries_number-=1

            # check if too low, and print out the remaining tries
            if user_guess < generated_number
                puts "You guessed too low :( , the remaining tries is #{tries_number}"
            elsif user_guess > generated_number
                puts "You guessed too high :( , the remaining tries is #{tries_number}" 
            else
                puts "Congratulations! You guessed the exact number in #{10-tries_number} tries"
                break
            end

            if tries_number ==0
                puts "Sorry, You lost! :("
                break
            end
        else
            puts "Please, Enter number within this range 1 - 100 (inclusive)" 
        end
    end

    print "Do you wants to play again ? ( Y / N ) : "
    play_again = gets.to_s.upcase
    
end

print "Good Bye :)"

# ###################################################################################################################
# --------------------------------------- END OF QUESTION 2 WITHOUT EXTRAS  -----------------------------------------
# ###################################################################################################################

