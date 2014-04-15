# Encoding: utf-8
require 'csv'

def most_successfull(number, max_year, file_name)

# valid_date_movies = []
# CSV.foreach(file_name) do |line|
#   (valid_date_movies << line) if line[1].to_i < max_year
# end
# valid_date_movies = valid_date_movies.sort_by {|movie_array| movie_array[2].to_i}
# valid_date_movies = valid_date_movies.reverse
# valid_date_movies.take(number)

valid_date_movies = []
CSV.foreach(file_name) do |line|
  movie = { name: line[0],
    year: line[1],
    earnings: line[2]
  }
  (valid_date_movies << movie) if line[1].to_i < max_year
end
valid_date_movies = valid_date_movies.sort_by {|movie_hash| movie_hash[:earnings].to_i}
valid_date_movies = valid_date_movies.reverse
valid_date_movies.take(number)


end

# puts most_successfull(15, 1990, "lib/movies.csv")
