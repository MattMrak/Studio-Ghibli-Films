require 'tty-prompt'
require 'net/http'
require 'open-uri'
require 'json'
require 'awesome_print'
require 'pry'

# class StudioGhibliFilmsAPI

#     URL = "https://ghibliapi.herokuapp.com/films"

#   def get_films
#     uri = URI.parse(URL)
#     response = Net::HTTP.get_response(uri)
#     json = JSON.parse(response.body)
#   end

# end


### API might be an array instead of a hash, so first step before 'hash =' should be to convert array to hash.
class StudioGhibliFilmsAPI

  def self.fetch_films
    url = "https://ghibliapi.herokuapp.com/films"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    hash = JSON.parse(response)
    # array_of_films = hash ### "title" might be wrong to use here. Have to see if API works.
    hash.each do |film_hash|
      film = Film.new
      film.title = film_hash["title"]
      film.description = film_hash["description"]
      film.director = film_hash["director"]
      film.release_date = film_hash["release_date"]
    end
  end

end