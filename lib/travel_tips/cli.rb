
class TravelTips::CLI
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
    puts "
    1. maine
    2. RI
    3. texas
    4. cali"
  end

  def menu
    input=nil
    while input != "exit"
    puts "Enter the number of the destination you would like to learn more about or type list for the full list:"
    input=gets.chomp
    case input
    when "1"
      puts "lobsters"
    when "2"
      puts "beaches"
    when "3"
      puts "ranch"
    when "list"
      spots
    end
  end
  end

  def goodbye
    "Go book your Fall trip!!"
  end
end