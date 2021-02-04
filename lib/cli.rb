class CLI
  
  def call
    puts logo
    sleep (1)
    puts "WELCOME TO THE MAGICAL WORLD OF STUDIO GHIBLI!"
    API.fetch_films
    self.menu
  end
  
  def menu
    sleep (2)
    puts "\n"
    puts "Would You Like To See A List Of Films?"
    puts "-> Type 'yes' and press 'enter' to continue"
    puts "-> Type any other key and press 'enter' to exit"
    user_input = gets.strip.downcase
    if user_input == "yes" || user_input == "y"
      sleep (1)
      puts "\n"
      puts "Great Choice!"
      sleep (2)
      puts "\n"
      display_list_of_films
      ask_user_for_film_choice
      sleep (2)
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
    sleep (2)
    puts "\n"
    puts "-> Type the number of the film you'd like to know more about, and press 'enter'"
    index = gets.strip.to_i - 1
    until index.between?(0, Film.all.length - 1)
      puts "Invalid Selection. Please Choose A Valid Number."
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

  def logo
    puts "\n"
    puts "                                                   .-                                
                                         .:      `-`-.                               
                               .       `: -`    .-   .                               
                             -:-.      -  `-   ..    -                               
                             :- -`    -`   /  .-     -                               
                             -`` `.  `:   .- .-      :                               
                            `-.`   .``+.`o/ `:/     `-                               
                            .`   `-.:..``````/h`  +:.                                
                            -/...`           ``  .o/`                                
                          `-.                       `..                              
                         .-                           `:`                            
                        `+`   -.``                      -`                           
                     `--+..  .o/ `.                      -.                          
                     /-.     `-...`                       -`                         
                   .+-         `                           -                         
                  `./`      ---:/:-.-----                  `:                        
                   .-.        `.`.----..`                  -o                        
                 `-/..-.`      .---.`  `.                   :.                       
               `.-`     `..`       .-`                       +.                      
             `.`           .-`                               `+                      
            `:.`             `-`                              `:                     
           `:..-    .          :                               -.                    
          `.     `-: -          .                               :                    
         `-       ``--          .-                              /                    
         :           `    .-`   ..                              /                    
        :.              `-.`-    -                              .:                   
        :                  `.    .`                              /                   
       ..                        .`                              :                   
       -`                        .                               -                   
       -`                        :                               .                   
       `                         .                                                   
                                                                                     "
  end

end
