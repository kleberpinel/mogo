# Create a program that is capable of reading in the contents of a CSV file.
#   Your solution should exemplify good object oriented programming fundamentals and
#   include Rspec tests.

# This CSV file holds information about various different regular polygons and circles.
#   Each entry in the CSV file holds the name of the shape and the length of its side, or
#   in the case of a circle, its radius. You should be able to calculate the perimeter and
#   area of these regular polygons.

# == Sample CSV content ==
# square,5
# pentagon,3
# triangle,2.5
# circle,2
# ========================

# Your program should output the following:

# Shape 1 is a square, with side length 5, having a perimeter of 20 and an area of
#    25 units square.
# ...
# ...
# Shape 4 is a circle, with a radius of 2, having a perimeter of 12.57 and an area
#   of 12.57 units square.

module MOGOInterview
  class Question3
    def self.call
      puts "Question3"
    end
  end
end

MOGOInterview::Question3.call
puts "Hello, MOGO!"