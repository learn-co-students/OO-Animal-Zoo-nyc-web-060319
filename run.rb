require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require "pry"

z1 = Zoo.new("Bronx zoo", "Bronx")
z2 = Zoo.new("SD", "San Diego")
Zoo.new("SD2", "San Diego")

a1 = Animal.new("Snake", 100, "Slytherin")
a2 = Animal.new("Snake", 100, "OtherS")
a3 = Animal.new("Cat", 100, "TestC")
a4 = Animal.new("Cat", 100, "TestC")

a1.zoo = z1
a2.zoo = z1
a3.zoo = z2
a4.zoo = z1

binding.pry
puts "done"
