class Movie
  attr_accessor :title

  All = []

  def initialize(title)
    @title = title
    All << self
  
  end

  def self.all
    All
  end

  def reviews 
    Review.all.select do |review|
      #binding.pry
      review.movie == self 
    end 
  end 

  def reviewers
    reviews.map do |review|
      review.viewer
    end 
  end 

  def average_rating 
    sum = 0 
    reviews.map do |review|
    sum += review.rating
    end 
    sum / reviews.length.to_f
  end 



end
