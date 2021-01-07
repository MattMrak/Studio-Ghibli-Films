require 'pry'
require 'nokogiri'
require 'open-uri'

class WorldsBestRestaurants::Scraper

    def get_page
      Nokogiri::HTML(open("https://www.housebeautiful.com/lifestyle/gardening/g3305/beautiful-gardens/"))
    end
  
    def scrape_restaurants_index
       self.get_page.css(".content-container slideshow-container new-tablet-enabled")
       binding.pry
    end
  
    def make_courses
        self.get_courses.each do |post|
          course = Course.new
          course.title = post.css("h2").text
          course.schedule = post.css(".date").text
          course.description = post.css("p").text
        end
      end
    
      def print_courses
        self.make_courses
        Course.all.each do |course|
          if course.title && course.title != ""
            puts "Title: #{course.title}"
            puts "  Schedule: #{course.schedule}"
            puts "  Description: #{course.description}"
          end
        end
      end
    
    end
    
    Scraper.new.print_courses