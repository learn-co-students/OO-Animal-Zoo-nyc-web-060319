class Zoo

attr_accessor :name, :location

@@all = []

def initialize(name, location)
  @name = name
  @location = location
  @@all << self
end

def self.all
  @@all
end

def animals
  Animal.all.select do |animals|
    self == animals.zoo
  end
end

def animal_species
  self.animals.collect do |animals|
    animals.species
  end.uniq
end

def find_by_species(species)
  self.animals.select do |animals|
    animals.species == species
  end
end

def animal_nicknames
  self.animals.collect do |animals|
    animals.nickname
  end
end

def self.find_by_location(location)
  self.all.select do |zoos|
    zoos.location == location
  end
end

end
