require 'tty-prompt'

class StudioGhibliFilms::CLI
  
  def call
        puts "WELCOME TO THE MAGICAL WORLD OF STUDIO GHIBLI!"    
        prompt = TTY::Prompt.new
        option = prompt.select("What would you like to do?") do |options|
          options.choice "See All Film Titles", 1
          options.choice "View Comprehensive Film Descriptions", 2
          options.choice "Exit", 3
        end
      if option === 1
        puts film
      elsif option === 2
        puts descriptions
      else
        option === 3
        puts exited
      end
  end

  def film
    "Spirited Away"
    # need to link parsed api for titles
  end

  def descriptions
    "Spirited Away From Studio Ghibli"
    # need to link parsed api
    films = StudioGhibliFilms.new.get_films
    puts ap films.uniq
  end

  def exited
    puts "Thank you! Come back soon."
    sleep (3)
    system "clear"
  end

end