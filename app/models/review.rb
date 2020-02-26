class Review
    attr_reader :viewer, :movie, :rating

    All = []

    def initialize(viewer, movie, rating)
        @viewer = viewer
        @movie = movie
        @rating = rating
        All << self 
    end 

    def self.all 
        All
    end 

    
    
        




    

end
