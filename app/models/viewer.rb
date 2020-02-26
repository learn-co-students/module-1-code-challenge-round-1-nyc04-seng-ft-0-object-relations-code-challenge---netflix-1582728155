class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    @@all << self
  end

  def self.all
    @@all
  end

  def reviews
  Review.all.select do |review|
    review.viewer 
    
  end
  
end

def reviewed_movies 
  Review.all.select do |review|
    review.movie 
  end
end


def reviewed_movie?(movie)
  Review.all.find do |movie| 
  if self.rating == true 
   puts true 
  else 
    puts false   
  end
end 
end 

def rate_movie(movie, rating)
if reviewed_movie? == false  
  Review.new(movie, rating)
else 
  Review.new(self, james_bond, 10)
end 

end

end 