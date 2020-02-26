class Viewer
  attr_accessor :username

  All = []

  def initialize(username)
    @username = username
    All << self 
  end

  def self.all
    All
  end

  def reviews 
    Review.all.select do |review|
      #binding.pry
      review.viewer == self
    end 
  end 

  def reviewed_movies 
    reviews.map do |review|
      review.movie
    end 
  end 

  def rate_movie(movie, rating)
    Review.new(self, movie, rating)
  end 
  
end
