class CLI
  
  def call
    puts "WELCOME TO THE MAGICAL WORLD OF STUDIO GHIBLI!"
    API.fetch_films
    self.menu
  end
  
  def menu
    sleep (1)
    puts "Would You Like To See A List Films?"
    puts "Type 'yes' to continue, or any other key to exit."
    user_input = gets.strip.downcase
    if user_input == "yes" || user_input == "y"
      sleep (1)
      puts "Great Choice!"
      sleep (2)
      puts "\n"
      display_list_of_films
      ask_user_for_film_choice
      sleep (1)
      puts "\n"
      menu
    else
      puts "\n"
      puts "Thank You, Come Back Soon!"
      sleep (3)
      system "clear"
    end
  end

  def display_list_of_films
    Film.all.each.with_index(1) do |film, index|
      puts "#{index}. #{film.title}"
    end
  end

  def ask_user_for_film_choice
    sleep (1)
    puts "\n"
    puts "Type the number of the film you'd like to know more about, and press 'enter'"
    index = gets.strip.to_i - 1
    until index.between?(0, Film.all.length - 1)
      puts "Invalid Selection. Choose A Valid Number."
      index = gets.strip.to_i - 1
    end
    film_instance = Film.all[index]
    display_film_details(film_instance)
  end

  def display_film_details(film)
    sleep (1)
    puts "\n"
    puts "Title: " + film.title
    puts "Description: " + film.description
    puts "Director: " + film.director
    puts "Release Date: " + film.release_date
  end

end



# class StudioGhibliFilms::CLI
  
#   def call
#         system "clear"
#         puts "WELCOME TO THE MAGICAL WORLD OF STUDIO GHIBLI!"    
#         prompt = TTY::Prompt.new
#         while true do
#         option = prompt.select("What would you like to do?") do |options|
#           options.choice "See All Film Titles", 1
#           options.choice "View Film Descriptions", 2
#           options.choice "Exit", 3
#         end
#       if option === 1
#         film
#       elsif option === 2
#         descriptions
#       else
#         option === 3
#         exited
#         break
#       end
#     end
#   end

#   def film
#     sleep (1)  
#     films = StudioGhibliFilmsAPI.new.get_films
#     films.each do |film|
#       film.select do |k, v| if k === "title"
#           puts ap "#{v}"
#         end
#       end
#     end
#   end

#   def descriptions
#     sleep (1)
#     films = StudioGhibliFilmsAPI.new.get_films
#     films.each do |film|
#     movie_info = film.fetch_values("title", "description", "director", "release_date") 
#     puts ap "Title: #{movie_info[0]} -- Director: #{movie_info[2]} -- Release Date: #{movie_info[3]} -- Description: #{movie_info[1]}"
#     end
#   end

#   def exited
#     puts "Thank you! Come back soon."
#     sleep (3)
#     system "clear"
#   end

# end