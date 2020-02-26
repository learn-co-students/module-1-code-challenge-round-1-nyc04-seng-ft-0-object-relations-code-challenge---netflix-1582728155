class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def reviews 
    Review.all.select do |review| 
    review.rating 
    end
  end 

  def reviewers
    Review.all.find do |name|
      name.viewer
    end
  end 

     
  def average_rating
    all_ratings = Review.all.find_all do |avg|
      avg.rating
      binding.pry 
      #CHECK  
    end 
    end 


  def self.highest_rated 
    average_rating.max 
    #CHECK 
  end 

end 


 