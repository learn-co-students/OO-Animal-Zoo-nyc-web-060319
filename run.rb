require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here


goldfish = Animal.new("Goldy", "Fish", 0.5)

moory = Animal.new("Moory", "Fish", 2)

moosh = Animal.new("Moosh", "Bear", 200)

dory = Animal.new("Dory", "Fish", 5)

zoo1 = Zoo.new("Bronx Zoo", "Bronx")
zoo2 = Zoo.new("Another Zoo", "88 Something Road")
zoo3 = Zoo.new("Other Bronx Zoo", "Bronx")

goldfish.zoo = zoo1
dory.zoo = zoo2
moory.zoo = zoo2
moosh.zoo = zoo2
binding.pry
puts "done"
