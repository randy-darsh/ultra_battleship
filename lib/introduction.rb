require 'pry'

class Introduction

  def self.intro
    puts "Welcome to BATTLESHIP\n\n"
    puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"

    response = get_player_response

    response
  end

  def self.get_player_response
    response = gets.chomp

    if (response != 'p') && (response != 'q') && (response != 'i')
      puts "Please choose (p), (q) or (i)"
    elsif response == 'p'
      abort # Board.new
    elsif response == 'q'
      abort
    elsif response == 'i'
      instructions
    end
    self.get_player_response
  end

  def self.instructions
    puts "\nThis game is so legit,"
    puts "you should always play with"
    puts "a friend so you don't get"
    puts "depressed.\n\n"
  end

end
