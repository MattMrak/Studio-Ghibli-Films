class StudioGhibliFilmsAPI

    URL = "https://ghibliapi.herokuapp.com/films"

  def get_films
    uri = URI.parse(URL)
    response = Net::HTTP.get_response(uri)
    json = JSON.parse(response.body)
  end

end