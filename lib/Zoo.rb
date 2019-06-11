# Y A `zoo` should be initialized with a name and a location, which should both be passed as strings.
# Y `Zoo#location` should return the location of the zoo instance.
# Y `Zoo#name` should return the name of the zoo instance.
# Y `Zoo.all` should return an array of all the zoo instances.
# Y `Zoo#animals` should return all the animals that a specific instance of a zoo has.
# Y `Zoo#animal_species` should return an array of all the species (as strings) o However, if you have two dogs, it should only return one "Dog" string (aka an **unique** array).
# Y `Zoo#find_by_species` should take in an animal's species as an argument and return an array of all the animals in that zoo, which are of that species.
# Y `Zoo#animal_nicknames` should return an array of all the nicknames of animals that a specific instance of a zoo has.
# Y `Zoo.find_by_location` should take in a location as an argument and return an array of all the zoos within that location.


class Zoo

    attr_reader :name, :location

    @@all = []

    def initialize(name, location)
        @name, @location = name, location
        @@all << self
    end

    def self.all
        @@all
    end

    def animals
        Animal.all.select {|animal| animal.zoo == self}
    end

    def animal_species
        animals.map {|zoo_animal| zoo_animal.species}.uniq
    end

    def find_by_species(species)
        animals.select {|zoo_animal| zoo_animal.species == species}
    end

    def animal_nicknames
        animals.map {|zoo_animal| zoo_animal.nickname}
    end

    def self.find_by_location(location)
        self.all.select{|zoo_obj| zoo_obj.location == location}
    end
end
