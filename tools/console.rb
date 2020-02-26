# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

bloodsport = Movie.new("Bloodsport")
bourne_identity = Movie.new("Bourne Identity")
james_bond = Movie.new("James Bond")

dmitriy = Viewer.new("Dmitriy")
yafa = Viewer.new("Yafa")
emilya = Viewer.new("Emilya")

review1 = Review.new(dmitriy, bloodsport, 10)
review2 = Review.new(yafa, james_bond, 9)
review3 = Review.new(emilya, bourne_identity, 8)


print bloodsport.average_rating 




# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
