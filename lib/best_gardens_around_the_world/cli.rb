class BestGardensAroundTheWorld::CLI
    
    def call
        BestGardensAroundTheWorld::API.new.make_garden
        puts "Welcome to 50 of the best gardens around the world!"
        start
    end
    
    def start
        puts ""
        puts "What number gardens would you like to see? 1-10, 11-20, 21-30, 31-40 or 41-50?"
        input = gets.strip.to_i
    
        print_gardens(input)
    
        puts ""
        puts "What garden would you like more information on?"
        input = gets.strip
    
        garden = BestGardensAroundTheWorld::Garden.find(input.to_i)
    
        print_gardens(garden)
    
        puts ""
        puts "Would you like to see another garden? Enter Y or N"
    
        input = gets.strip.downcase
        if input == "y"
          start
        elsif input == "n"
          puts ""
          puts "Thanks for looking! Come back soon!"
          exit
        else
          puts ""
          puts "Please try another response."
          start
        end
    end
    
    def print_gardens(garden)
        puts ""
        puts "----------- #{garden.name} - #{garden.position} -----------"
        puts ""
        puts "#{restaurant.intro_quote}"
        puts "Location:           #{restaurant.location}"
        puts "Head Chef:          #{restaurant.head_chef}"
        puts "Contact:            #{restaurant.contact}"
        puts "Phone:             #{restaurant.phone}"
        puts "Website:            #{restaurant.website_url}"
    
        puts ""
        puts "---------------Description--------------"
        puts ""
        puts "#{restaurant.description}"
        puts ""
    
        puts ""
        puts "---------------About the Food--------------"
        puts ""
        puts "#{restaurant.food_style}"
        puts ""
    end
    
    def print_restaurants(from_number)
        puts ""
        puts "---------- Restaurants #{from_number} - #{from_number+9} ----------"
        puts ""
        WorldsBestRestaurants::Restaurant.all[from_number-1, 10].each.with_index(from_number) do |restaurant, index|
          puts "#{index}. #{restaurant.name} - #{restaurant.location}"
        end
    end
    
end