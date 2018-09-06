# There are 2 SQL tables, Dogs (id, name, age) and Bones (id, dog_id, animal_type, rating)

# a) Write a SQL query on the tables to return the number of bones each dog has
#    (including 0 if a dog has none), and the average rating of those bones.

# b) Making some basic assumptions about the relationships between the models,
#    write an executable using the equivalent in Ruby (using ActiveRecord, Sequel or some
#    other approach) that returns the same results.


module MOGOInterview
  class Question2
    def self.call
      puts "Question2"
    end
  end
end

MOGOInterview::Question2.call
puts "Hello, MOGO!"