
require 'pry'
class Zoo
    @@all = []
    attr_reader :name, :location
    def initialize(name, location)
        @name = name
        @location = location
    end

    def self.all
        @@all
    end

    def self.find_by_location(location)
        all.select{|zoo| zoo.location == location}
    end

    # binding.pry
end
