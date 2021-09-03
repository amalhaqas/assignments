# ####################################################################################################
# ---------------------------------- START OF QUESTION 1 PART 1 --------------------------------------
# ####################################################################################################

# Find net salary for employee when the bonus rate is as follows
#   basic salary between 0 and 10000 then bonus 25%.
#   basic salary between 10001 and 100000 then bonus 15%.
#   basic salary > 100000 then bonus 10%.
# Print basic salary, bonus amount and net salary

# ----------------------------------------------------------------------------------------------------

basic_salary = 0
bonus =0

loop do
    print "Please , enter positive basic salary ( greater than 0 ) : "
       basic_salary = gets.to_i
    if basic_salary > 0
        case
        when (0..10000).include?(basic_salary)
            bonus = basic_salary * 0.25
        when (10001..100000).include?(basic_salary)
            bonus = basic_salary * 0.15
        when basic_salary > 100000
            bonus = basic_salary * 0.10
        end
        break
    end
end

net_salary = basic_salary + bonus

print "Basic Salary : #{basic_salary}\n"
print "Bonus : #{bonus}\n"
print "Net Salary : #{net_salary}"

# ####################################################################################################
# ----------------------------------- END OF QUESTION 1 PART 1 ---------------------------------------
# ####################################################################################################


