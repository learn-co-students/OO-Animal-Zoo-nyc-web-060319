class Animal

attr_accessor :weight, :zoo
attr_reader :species, :nickname

@@all = []

def initialize(species, nickname, weight)
  @weight = weight
  @species = species
  @nickname = nickname
  @@all << self
end

def self.all
  @@all
end

def self.find_by_species(species)
  self.all.select do |animals|
    animals.species == species
  end
end




end
