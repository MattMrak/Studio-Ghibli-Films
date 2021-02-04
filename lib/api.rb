class API

  def self.fetch_films
    url = "https://ghibliapi.herokuapp.com/films"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    hash = JSON.parse(response)
    hash.each do |film_hash|
      film = Film.new
      film.title = film_hash["title"]
      film.description = film_hash["description"]
      film.director = film_hash["director"]
      film.release_date = film_hash["release_date"]
    end
  end

end