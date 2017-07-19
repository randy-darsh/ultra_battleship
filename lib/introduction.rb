require_relative 'board'
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
      print "\nI have laid out my ships on the grid.
You now need to layout your two ships.
The first is two units long and the
second is three units long.
The grid has A1 at the top left and D4 at the bottom right.\n
Enter the squares for the two-unit ship:"
    elsif response == 'q'
      abort
    elsif response == 'i'
      instructions
    elsif response == ''
    end
    get_player_response
  end

  def self.instructions
    puts "\nThis game is so legit,"
    puts "you should always play with"
    puts "a friend so you don't get"
    puts "depressed.\n\n"
  end

end
