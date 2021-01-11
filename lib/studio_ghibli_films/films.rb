class StudioGhibliFilms::Films
    
    attr_accessor :title, :description, :director, :producer, :release_date
    
    @@all= []

    def initialize(title=nil, description=nil, director=nil, producer=nil, release_date=nil)
        @title = title
        @description = description
        @director = director
        @producer = producer
        @release_date = release_date
        @@all << self
    end

    def self.all
        @@all
    end

end
