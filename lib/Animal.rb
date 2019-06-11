# Keep in mind that an animal can only be in one location at a time!

#  _______                 _______  ______________  
# |       |               /        |              |
# |  [Zoo | ------------< -------- |    Animal    |
# |_______|               \_______ |______________|
#                         



# ### Animal Class
# Y An `animal` should be instantiated w/ the species a num weight and a nickname.  animal's species + nickname should not be able to change, but its weight can.
# Y `Animal#nickname` should return the nickname of the animal.
# Y `Animal#weight` should return the weight of the animal.
# Y `Animal#species` should return the species of the animal.
# Y `Animal.all` should return an array of all the animal instances.
# - `Animal#zoo` should return the zoo instance that the instance belongs to.
# - `Animal.find_by_species` should take in an animal's species as an argument and return an array of all the animals, which are of that species.

class Animal

    attr_reader :nickname, :species 

    attr_accessor :weight, :zoo

    @@all = []

    def initialize(nickname, species, weight)
        @nickname, @species, @weight = nickname, species, weight
        @@all << self
    end

    def self.all
        @@all
    end

    def self.zoos
        Zoo.all.find {|zoo| zoo.animal == self}
    end

    def Animal.find_by_species(species)
        self.all.select {|animal| animal.species == species}
    end

end
