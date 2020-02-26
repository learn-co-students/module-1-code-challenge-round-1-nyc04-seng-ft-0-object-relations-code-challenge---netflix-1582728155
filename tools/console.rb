# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


daryl = Viewer.new("Daryl")
graham = Viewer.new("Graham")
anne = Viewer.new("Anne")

bad_boys = Movie.new("Bad Boys")
step_brothers = Movie.new("Step Brothers")
good_will_hunting = Movie.new ("Good Will Hunting")

review1 = Review.new(daryl, step_brothers, 5)
review2 = Review.new(graham, bad_boys, 4)
review3 = Review.new(daryl, bad_boys, 3)
review4 = Review.new(anne, good_will_hunting, 5)
review5 = Review.new(anne, step_brothers, 3)




# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
