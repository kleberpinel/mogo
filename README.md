# Solutions

## Challenge one

To run the solution, just type:

```
ruby question1.rb
```

## Challenge two

To run the solution, just type:

```
cd question2
psql -f database.sql -U postgres
ruby question1.rb
```

The plain query, for item `a` is here:

```
SELECT
  dogs.name,
  count(bones.id) as bones_count,
  avg(bones.rating)  as bones_avg
FROM
  DOGS
LEFT JOIN
  BONES ON BONES.DOG_ID = DOGS.ID
GROUP BY
  DOGS.NAME;
```

## Challenge three

To run the solution, just type:

```
cd question3
irb
require './solution.rb'
MOGOInterview::Question3.call
```

I made to run inside irb, just to not have the `puts` directly in the file running all the time that you run the specs.

To run the specs:

```
cd question3
rspec formula_rspec.rb
rspec formater_rspec.rb
```