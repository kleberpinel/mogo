# There are 2 SQL tables, Dogs (id, name, age) and Bones (id, dog_id, animal_type, rating)

# a) Write a SQL query on the tables to return the number of bones each dog has
#    (including 0 if a dog has none), and the average rating of those bones.

# The implementation is using Postgres as database
# To prepare the database, you need to run the `database.sql` with the folowing command:
# $ psql -f database.sql -U postgres

# ---- Bellow is the query which will satisfy the QUESTION A -----
# SELECT
#   dogs.name,
#   count(bones.id) as bones_count,
#   avg(bones.rating)  as bones_avg
# FROM
#   DOGS
# LEFT JOIN
#   BONES ON BONES.DOG_ID = DOGS.ID
# GROUP BY
#   DOGS.NAME;

# ===> ----------- OUTPUT -----------
#    name   | bones_count |     bones_avg
# ----------+-------------+--------------------
#  Boneless |           0 |
#  Ryca     |           3 | 4.0000000000000000
#  Bob      |          10 | 2.8000000000000000
#  Luna     |           7 | 4.0000000000000000
#  Max      |           6 | 4.8333333333333333
# (5 rows)

# b) Making some basic assumptions about the relationships between the models,
#    write an executable using the equivalent in Ruby (using ActiveRecord, Sequel or some
#    other approach) that returns the same results.

require 'active_record'

class Dog < ActiveRecord::Base
  has_many :bones
end

class Bone < ActiveRecord::Base
  belongs_to :dog
end

module MOGOInterview
  class Query

    def initialize
      ActiveRecord::Base.establish_connection("postgres://localhost/mogo_interview?pool=5")
    end

    def dogs_and_bones_report
      Dog.select("dogs.name as name, count(bones.id) as bones_count, avg(bones.rating) as bones_avg")
         .joins('LEFT JOIN bones ON bones.dog_id = dogs.id')
         .group('dogs.name')
         .map do |record|
          { name: record.name,
            bones_count: record.bones_count,
            bones_avg: record.bones_avg }
       end
    end
  end
end

puts MOGOInterview::Query.new.dogs_and_bones_report.inspect

# $ ruby question2.rb

