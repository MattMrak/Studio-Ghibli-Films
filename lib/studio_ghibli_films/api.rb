require 'net/http'
require 'open-uri'
require 'json'
require 'awesome_print'
require 'pry'

class StudioGhibliFilmsAPI

    URL = "https://ghibliapi.herokuapp.com/films"

  def get_films
    uri = URI.parse(URL)
    response = Net::HTTP.get_response(uri)
    json = JSON.parse(response.body)
    film_titles(json)
  end

  def film_titles(json)
    films = []
      json.collect do |film|
        films << film["title"]
    end
  end
  
end

films = StudioGhibliFilmsAPI.new.get_films
puts ap films.uniq
# films = StudioGhibliFilms.new
# puts films.film_titles.uniq
