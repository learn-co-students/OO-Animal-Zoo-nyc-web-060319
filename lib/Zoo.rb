class Zoo
  @@all = []

  attr_reader :name, :location

  def initialize(name, location)
    @name = name
    @location = location
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_location(loc_arg)
    @@all.select do |zoo|
      zoo.location == loc_arg
    end
  end

  def animals
    Animal.all.select do |animal|
      animal.zoo == self
    end
  end

  def animal_species
    animals.map do |animal|
      animal.species
    end.uniq
  end

  def find_by_species(species_arg)
    animals.select do |animal|
      animal.species == species_arg
    end
  end

  def animal_nicknames
    animals.map(&:nickname)
  end
end
