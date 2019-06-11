require 'pry'
require_relative 'Zoo'
class Animal
    @@all = []
    attr_reader :species, :nickname, :zoo
    attr_accessor :weight
    def initialize(species, weight, nickname, zoo)
        @species = species
        @weight = weight
        @nickname = nickname
        @zoo = zoo
        @@all << self
    end

    def self.all
        @@all
    end

    def self.find_by_species(species)
        all.select { |animal| animal.species = species}
    end
    binding.pry
end
