require'pry'
class Restaurant

  #TODO add relevant accessors if necessary
  attr_accessor :name
  attr_reader :city, :type, :average_rating

  @@all_restaurants = {}
  def initialize(city, name, type=nil)
    #TODO: implement constructor with relevant instance variables
    @city = city
    @name = name
    @type = type
    @ratings = []
    @@all_restaurants[name] = city
  end

  #TODO: implement #filter_by_city and #rate methods

  def self.filter_by_city(restaurants, where)
    restaurants_near_you = []
    restaurants.each do |resto|
      restaurants_near_you << resto if resto.city == where
    end
    restaurants_near_you
  end

  def rate(one_rating)
    #binding.pry
    @ratings << one_rating
    sum = 0
    @ratings.each {|rate| sum += rate}
    @average_rating = (sum /(@ratings.length))
    @average_rating
  end
end

# jules_verne = Restaurant.new("paris", "Jules Verne")
# tour_d_argent = Restaurant.new("paris", "Tour d'argent")
# bocuse = Restaurant.new("lyon", "Paul Bocuse")
# restos = [jules_verne, tour_d_argent, bocuse]
# p Restaurant.filter_by_city(restos,"lyon") # => [bocuse]

# bocuse.rate(5)
# bocuse.rate(10)
# p bocuse.average_rating