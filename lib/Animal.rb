class Animal
  @@all = []

  attr_reader :nickname, :species
  attr_accessor :weight, :zoo

  def initialize(species, weight, nickname)
    @species = species
    @weight = weight
    @nickname = nickname
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_species(spec_string)
    @@all.select do |animal|
      animal.species == spec_string
    end
  end
end
