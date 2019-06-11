require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'

zoo1 = Zoo.new("Bronx Zoo", "Bronx")
zoo2 = Zoo.new("Prospect Park Zoo", "Brooklyn")
zoo3 = Zoo.new("San Deigo Zoo", "California")
zoo4 = Zoo.new("Los Angoles Zoo", "California")

dog = Animal.new("dog", "pupper", 20)
dog2 = Animal.new("dog", "big dog", 20)
cat = Animal.new("cat", "kitty", 10)
lion = Animal.new("lion", "simba", 30)
snake = Animal.new("snake", "sneaky", 15)
bear = Animal.new("bear", "smoky", 50)
tiger = Animal.new("tiger", "frosty", 30)

dog.zoo = zoo1
dog2.zoo = zoo1
cat.zoo = zoo1
lion.zoo = zoo1
snake.zoo = zoo1
bear.zoo = zoo2
tiger.zoo = zoo3

puts dog.nickname
puts dog.weight
puts dog.species
puts Animal.all.inspect
puts dog.zoo.inspect
puts Animal.find_by_species("dog").inspect

# puts zoo1.location
# puts zoo1.name
# puts Zoo.all.inspect
# puts zoo1.animals.inspect
#puts zoo1.animal_species.inspect
# puts zoo1.find_by_species("dog").inspect
# puts zoo1.find_by_species("cat").inspect
# puts zoo1.animal_nicknames.inspect
# puts Zoo.find_by_location("California").inspect
