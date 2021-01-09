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
    
  end

  def exited
    puts "Thank you! Come back soon."
    sleep (3)
    system "clear"
  end

end


    # def start
    #     puts ""
    #     puts "What number gardens would you like to see? 1-10, 11-20, 21-30, 31-40 or 41-50?"
    #     input = gets.strip.to_i
    
    #     print_films(input)
    
    #     puts ""
    #     puts "What garden would you like more information on?"
    #     input = gets.strip
    
    #     film = StudioGhibliFilms::Films.find(input.to_i)
    
    #     print_films(film)
    
    #     puts ""
    #     puts "Would you like to see another garden? Enter Y or N"
    
    #     input = gets.strip.downcase
    #     if input == "y"
    #       start
    #     elsif input == "n"
    #       puts ""
    #       puts "Thanks for looking! Come back soon!"
    #       exit
    #     else
    #       puts ""
    #       puts "Please try another response."
    #       start
    #     end
    # end
    
    # def print_films(film)
    #     puts ""
    #     puts "----------- #{film.name} - #{film.position} -----------"
    #     puts ""
    #     puts "#{restaurant.intro_quote}"
    #     puts "Location:           #{restaurant.location}"
    #     puts "Head Chef:          #{restaurant.head_chef}"
    #     puts "Contact:            #{restaurant.contact}"
    #     puts "Phone:             #{restaurant.phone}"
    #     puts "Website:            #{restaurant.website_url}"
    
    #     puts ""
    #     puts "---------------Description--------------"
    #     puts ""
    #     puts "#{restaurant.description}"
    #     puts ""
    
    #     puts ""
    #     puts "---------------About the Food--------------"
    #     puts ""
    #     puts "#{restaurant.food_style}"
    #     puts ""
    # end
    
    # def print_film(from_number)
    #     puts ""
    #     puts "---------- Restaurants #{from_number} - #{from_number+9} ----------"
    #     puts ""
    #     WorldsBestRestaurants::Restaurant.all[from_number-1, 10].each.with_index(from_number) do |restaurant, index|
    #       puts "#{index}. #{restaurant.name} - #{restaurant.location}"
    #     end
    # end