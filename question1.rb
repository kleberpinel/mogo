# With the array (1,2,3,4,5,6), write a recursive function that outputs:
# <1>
#   <2>
#     <3>
#       <4>
#         <5>
#           <6>
#           </6>
#         </5>
#       </4>
#     </3>
#   </2>
# </1>

module MOGOInterview
  class Question1
    def self.call(array)
      print_elem2(array)
    end

    def self.print_elem2(array)
      value = array.first
      tabs = (1..value-1).map{ |i| "\t" }.join("")
      return "#{tabs}<#{value}>\n#{tabs}</#{value}>" if (array.size == 1)
      "#{tabs}<#{value}>\n #{print_elem2(array[1..array.size])} \n#{tabs}</#{value}>"
    end
  end
end

puts MOGOInterview::Question1.call([1, 2, 3, 4, 5, 6])

# $ ruby question1.rb
# <1>
#   <2>
#     <3>
#       <4>
#         <5>
#           <6>
#           </6> 
#         </5> 
#       </4> 
#     </3> 
#   </2> 
# </1>