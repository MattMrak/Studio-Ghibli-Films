class Film

    attr_accessor :title, :description, :director, :release_date
    
    @@all = []

    def initialize
        @@all << self
    end

    def self.all
        @@all
    end
    
end