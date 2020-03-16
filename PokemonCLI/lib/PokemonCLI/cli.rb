class PokemonCLI::CLI
  def start
    puts "================================================================"
    puts "==========================Hello there!=========================="
    puts "===Here you can find out information about any pokemon!      ==="
    puts "===At any point in this you can type quit to exit the session==="
    puts "===To find out more info please type the pokemon's name:     ==="
    input = gets.strip.downcase
    
    if input == "try"
      puts "Try again!"
      start
    elsif input == "quit"
      quit
    else
      @data = PokemonCLI::API.get_pokemon(input)
      display
    end
  end
  
  def display
    puts "===You have chosen the pokemon #{@data.name.capitalize}!                      ==="
    puts "===Select a number below to find out more about #{@data.name.capitalize}:     ==="
    puts "===1. All games #{@data.name.capitalize} is listed in.                        ==="
    puts "===2. Stats for #{@data.name.capitalize}.                                     ==="
    puts "===3. What type and where in the pokedex #{@data.name.capitalize} is located. ==="
    puts "===4. Basic information for #{@data.name.capitalize}.                         ==="
    input = gets.strip
    if input == "1"
      puts "===You have selected to show all games #{@data.name.capitalize} appears in."
      i = 1
      while i <= @data.games.length
        puts "#{i}. #{@data.games[i-1]}"
        i += 1
      end
      puts "===Select another choice if you would like to find out more information."
      puts "================================================================"
      edited_display
    elsif input == "2"
      puts "===You have selected the stats for #{@data.name.capitalize}."
      puts "===Speed is #{@data.stats[:speed]}"
      puts "===Special attack is #{@data.stats[:special_attack]}"
      puts "===Special defense is #{@data.stats[:special_defense]}"
      puts "===Attack is #{@data.stats[:attack]}"
      puts "===Defense is #{@data.stats[:defense]}"
      puts "===HP is #{@data.stats[:hp]}"
      puts "===Select another choice if you would like to find out more information."
      puts "================================================================"
      edited_display
    elsif input == "3"
      puts "===You have selected what type #{@data.name.capitalize} is and where in the pokedex it is."
      if @data.types.length > 1
        puts "===#{@data.name.capitalize}'s types are #{@data.types[0]} and #{@data.types[1]}. It is number #{@data.pokedex} in the pokedex."
      else
        puts "===#{@data.name.capitalize}'s type is #{@data.types[0]} and it is number #{@data.pokedex} in the pokedex."
      end
      puts "===Select another choice if you would like to find out more information."
      puts "================================================================"
      edited_display
    elsif input == "4"
      puts "===You have selected basic information for #{@data.name.capitalize}."
      puts "===#{@data.name.capitalize}'s weight is #{@data.specs[:weight]}, his height is #{@data.specs[:height]} and his base xp is #{@data.base_exp}."
      puts "===Select another choice if you would like to find out more information."
      puts "=============================================================="
      edited_display
    elsif input == "quit"
      quit
    else
      puts "==========================Try again!=========================="
      edited_display
    end
  end
  
  def edited_display
    puts "===1. All games #{@data.name.capitalize} is listed in.                        ==="
    puts "===2. Stats for #{@data.name.capitalize}.                                     ==="
    puts "===3. What type and where in the pokedex #{@data.name.capitalize} is located. ==="
    puts "===4. Basic information for #{@data.name.capitalize}.                         ==="
    input = gets.strip
    if input == "1"
      puts "===You have selected to show all games #{@data.name.capitalize} appears in."
      i = 1
      while i <= @data.games.length
        puts "#{i}. #{@data.games[i-1]}"
        i += 1
      end
      puts "===Select another choice if you would like to find out more information."
      puts "================================================================"
      edited_display
    elsif input == "2"
      puts "===You have selected the stats for #{@data.name.capitalize}."
      puts "===Speed is #{@data.stats[:speed]}"
      puts "===Special attack is #{@data.stats[:special_attack]}"
      puts "===Special defense is #{@data.stats[:special_defense]}"
      puts "===Attack is #{@data.stats[:attack]}"
      puts "===Defense is #{@data.stats[:defense]}"
      puts "===HP is #{@data.stats[:hp]}"
      puts "===Select another choice if you would like to find out more information."
      puts "================================================================"
      edited_display
    elsif input == "3"
      puts "===You have selected what type #{@data.name.capitalize} is and where in the pokedex it is."
      if @data.types.length > 1
        puts "===#{@data.name.capitalize}'s types are #{@data.types[0]} and #{@data.types[1]}. It is number #{@data.pokedex} in the pokedex."
      else
        puts "===#{@data.name.capitalize}'s type is #{@data.types[0]} and it is number #{@data.pokedex} in the pokedex."
      end
      puts "===Select another choice if you would like to find out more information."
      puts "================================================================"
      edited_display
    elsif input == "4"
      puts "===You have selected basic information for #{@data.name.capitalize}."
      puts "===#{@data.name.capitalize}'s weight is #{@data.specs[:weight]}, his height is #{@data.specs[:height]} and his base xp is #{@data.base_exp}."
      puts "===Select another choice if you would like to find out more information."
      puts "=============================================================="
      edited_display
    elsif input == "quit"
      quit
    else
      puts "==========================Try again!=========================="
      edited_display
    end
  end
  
  def quit
    puts "============================Goodbye!============================"
    puts "================================================================"
  end
end