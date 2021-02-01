require 'tty-prompt'
require 'net/http'
require 'open-uri'
require 'json'
require 'awesome_print'
require 'pry'

class StudioGhibliFilms::CLI
  
  def call
    puts "Yerrrr"
    puts ap StudioGhibliFilmsAPI.fetch_films
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







### This is potential code. Not needed.
# def film
#   sleep (1)
#   prompt = TTY::Prompt.new
#   while true do
#     option = prompt.select("Which film would you like more information on?") do |options|
#       options.choice "Titles", 1
#       options.choice "Go Back To Main Menu", 2
#     end
#   if option === 1
#     films = StudioGhibliFilmsAPI.new.get_films
#     films.each do |film|
#       film.select do |k, v| if k === "title"
#           puts ap "#{v}"
#         end
#       end
#     end
#     break
#   elsif
#     option === 2
#     exiting
#     break
#   end
# end
### iterate through films and for each one, puts the title
### after listing film titles, create a new prompt asking which movie they'd like to see more info on

# def exiting
#   system "clear"
# end