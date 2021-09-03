# ####################################################################################################
# ------------------------------------- START OF QUESTION 1 ------------------------------------------
# ####################################################################################################

# Write a Ruby program to retrieve the total marks where subject name and marks
# of a student stored in a hash.
# Sample subject and marks : Literature - 74, Science – 89, Math - 91

# ----------------------------------------------------------------------------------------------------

# PART (1) - FIXED DATA AS GIVEN EXAMPLE  ************************************************************
# student1_marks_hash = {"Literature":74, "Science":89, "Math":91}

# # start of program 
# puts "########################################################################"
# puts ":: STUDENT MARKS ALONG WITH SUBJECT ::"
# sum_of_marks = 0
# student1_marks_hash.each { 
#     |k, v| 
#     puts "   # #{k} : #{v} "
#      sum_of_marks+=v
# }
# puts "   # Sum of Student Marks : #{sum_of_marks}"
# puts "########################################################################"

# ****************************************************************************************************

# PART (2) - HASH DATA FILLED FROM USER INPUT ********************************************************


# student1_marks_hash = {}
# subject_name = ''
# subject_mark = 0
# sum_of_marks = 0
# exit_answer = ''

# # start of program 
# puts "########################################################################"
# puts ":: STUDENT MARKS ALONG WITH SUBJECT PROGRAM ::"

# while true
#     print "Enter Subject Name : "
#     subject_name = gets.to_s

#     print "Enter Subject Mark : "
#     subject_mark = gets.to_i

#     case 
#     when (0..100).include?(subject_mark)
#         student1_marks_hash[subject_name] = subject_mark
#         sum_of_marks += subject_mark
#         print "Do you want to stop enter data ? ( Y / N ) : "
#         exit_answer = gets.chomp.to_s.upcase
#         break if exit_answer == "Y"
#     else
#         puts "Enter Again valid subject name and mark"
#     end
# end

# student1_marks_hash.each { 
#     |k, v| 
#     print "   # #{k} : #{v}\n"
#     #  sum_of_marks+=v
# }
# puts "   # Sum of Student Marks : #{sum_of_marks}"
# puts "########################################################################"


# ****************************************************************************************************

# ####################################################################################################
# -------------------------------------- END OF QUESTION 1 -------------------------------------------
# ####################################################################################################


