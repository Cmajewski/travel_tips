
module TravelTips
  class CLI
  attr_reader :spots

    def run
        welcome
        menu
        goodbye

    end

    def welcome
      puts "Looking for an affordable spot to travel this Fall (Y/N)?"
      answer=gets.chomp
      if answer=="N"
        puts "Staycations are the best vacations!"
        exit
      elsif answer=="Y"
        spots
      else
        puts "Im not sure what you mean by that. Try selecting (Y/N)."
      end
    end

    def spots
      @spots=TravelTips::Spots.all_with_index
    end

    def menu
      input=nil
      while input != "exit"
      puts "Enter the number of the destination you would like to learn more about or type list for the full list:"
      input=gets.chomp
        if input!="list" && input.to_i>0 && input>to_i<=20
          puts @spots[input.to_i-1]
        elsif input="list"
          @spots
        else
          puts "Not sure what you mean, please pick a number or list."
        end
      end
    end

    def goodbye
      puts "Go book your Fall trip!!"
    end

  end
end
