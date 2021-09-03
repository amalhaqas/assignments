# ####################################################################################################
# ---------------------------------- START OF QUESTION 1 PART 2 --------------------------------------
# ####################################################################################################

# The types of triangles classified by their sides are the following:
#   Equilateral triangle: A triangle with all three sides equal in measure.
#   Isosceles triangle: A triangle in which at least two sides have equal measure
#   Scalene triangle: A triangle with all three sides of different measures

# Write a program that takes three integers as an argument and returns "equi" for
# Equilateral triangles, "iso" for Isosceles triangles and "sca" for scalene triangles.

# ----------------------------------------------------------------------------------------------------

triangle_sides =[]
puts "Enter The 3 numbers that represent the triangle side"
until triangle_sides.length == 3
    loop do
        print "Enter side #{triangle_sides.length+1} length : "
        side = gets.to_i
        if side != 0
            print side
            # && side.is_a? Integer
            triangle_sides.push(side)
            break
        else
            print "Please Enter Again, "
        end
    end
end

print "triangle_sides #{triangle_sides}"
if triangle_sides == triangle_sides.uniq
    print "sca ( scalene triangles )"  
elsif triangle_sides.uniq.length == 2
    print "iso ( Isosceles triangles )"
else
    print "equi ( Equilateral triangles )"
end

# ####################################################################################################
# ----------------------------------- END OF QUESTION 1 PART 2 ---------------------------------------
# ####################################################################################################


