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
  require 'csv'

  class Question3
    def self.call
      puts CSVProcessor.call('./shapes.csv')
    end
  end

  class CSVProcessor
    def self.call(path)
      ::CSV.foreach(path).map.with_index(1) do |rows, i|
        shape = rows[0]
        side = rows[1]
        Formater.call(i, shape,  side.to_i)
      end
    end
  end

  class Formater
    def self.call(index, shape, side)
      perimeter = Formula.perimeter(shape, side).round(2)
      area      = Formula.area(shape, side).round(2)
      dimension = 'side length'
      dimension = 'a raius of' if shape == 'circle'
      "Shape #{index} is a #{shape}, with #{dimension} #{side}, having a"\
      " perimeter of #{perimeter} and an area of #{area} units square."
    end
  end

  class Formula
    def self.perimeter(shape, side)
      case shape
      when 'square'   then 4 * side
      when 'pentagon' then 5 * side
      when 'triangle' then 3 * side
      when 'circle'   then 2 * Math::PI * side
      end
    end

    def self.area(shape, side)
      case shape
      when 'square'   then side * side
      when 'pentagon' then (1/4) * Math.sqrt(5 * (5 + 2 * Math.sqrt(5))) * (side * side)
      when 'triangle' then (side * Math.sqrt(3)) / 2 # Assuming its an equilateral triangle
      when 'circle'   then Math::PI * (side * side)
      end
    end
  end
end

# $ irb
# $ require './solution.rb'
# $ MOGOInterview::Question3.call
# Shape 1 is a square, with side length 5, having a perimeter of 20 and an area of 25 units square.
# Shape 2 is a pentagon, with side length 3, having a perimeter of 15 and an area of 0.0 units square.
# Shape 3 is a triangle, with side length 2, having a perimeter of 6 and an area of 1.73 units square.
# Shape 4 is a circle, with a raius of 2, having a perimeter of 12.57 and an area of 12.57 units square.
