# ####################################################################################################
# ---------------------------------- START OF QUESTION 1 PART 3 --------------------------------------
# ####################################################################################################

# You're saying good-bye your best friend , See you next happy year . Happy Year is the
# year with only distinct digits , (e.g) 2018
# Notes:
#   Year Of Course always Positive .
#   Have no fear , It is guaranteed that the answer exists .
#   It's not necessary that the year passed to the function is a Happy one .
#   Input Year with in range (1000 ≤ y ≤ 9000)
# Examples:
#   nextHappyYear (7712) ==> return (7801)
#   nextHappyYear (8989) ==> return (9012)

# ----------------------------------------------------------------------------------------------------

year_entered = 0
next_happy_year = 0

loop do
    print "Enter positive year ( from 1000 to 9000 ) : "
    year_entered = gets.to_i

    case year_entered
    when 1000..9000
        next_happy_year = year_entered.next
        break
    else 
        print "Please , "
    end
end

until next_happy_year.to_s.split("").uniq.size == 4
    next_happy_year = next_happy_year.next
end

print "nextHappyYear (#{year_entered}) : (#{next_happy_year})"

# ####################################################################################################
# ----------------------------------- END OF QUESTION 1 PART 3 ---------------------------------------
# ####################################################################################################


