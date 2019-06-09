class Animal
    attr_accessor :weight, :zoo
    attr_reader :species, :name
    @@all = []

    def initialize(species, weight, name, zoo)
        @species = species
        @weight = weight
        @name = name
        @zoo = zoo
        @@all << self
    end

    def self.all
        @@all
    end

    def self.find_by_species(species)
        self.all.select do |animal|
            animal.species == species
        end
    end
end
