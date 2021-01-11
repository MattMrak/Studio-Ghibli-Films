require 'tty-prompt'
require 'net/http'
require 'open-uri'
require 'json'
require 'awesome_print'
require 'pry'

class StudioGhibliFilms::CLI
  
  def call
     system "clear"
        puts "WELCOME TO THE MAGICAL WORLD OF STUDIO GHIBLI!"    
        prompt = TTY::Prompt.new
        option = prompt.select("What would you like to do?") do |options|
          options.choice "See All Film Titles", 1
          options.choice "View Comprehensive Film Descriptions", 2
          options.choice "Exit", 3
        end
      if option === 1
        film
      elsif option === 2
        descriptions
      else
        option === 3
        exited
      end
  end

  def film
    sleep (1)
    films = StudioGhibliFilmsAPI1.new.get_films
    puts ap films.uniq
  end

  def descriptions
    sleep (1)
    films = StudioGhibliFilmsAPI2.new.get_films
    puts ap films.uniq
  end

  def exited
    puts "Thank you! Come back soon."
    sleep (3)
    system "clear"
  end

end
