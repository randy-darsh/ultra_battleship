require 'pry'

class Board

  attr_reader :grid

  def initialize
    @grid = [[' ', ' ', ' ', ' '],
             [' ', ' ', ' ', ' '],
             [' ', ' ', ' ', ' '],
             [' ', ' ', ' ', ' ']]
  end

  def make_board
    player_board = "\n"
    player_board += "==========\n"
    player_board += "  1 2 3 4\n"
    player_board += 'A ' + grid[0].join(' ') + "\n"
    player_board += 'B ' + grid[1].join(' ') + "\n"
    player_board += 'C ' + grid[2].join(' ') + "\n"
    player_board += 'D ' + grid[3].join(' ') + "\n"
    player_board += '=========='
    puts player_board
  end

  def character_to_index(index)
    character = index[0]
    character_selection = {"A" => 0, "B" => 1, "C" => 2, "D" => 3}
    character_selection[character]
  end

  def number_to_index(index)
    number = index[1]
    number_selection = {"1" => 0, "2" => 1, "3" => 2, "4" => 3}
    number_selection[number]
  end

  def convert_to_coordinates(index)
    coordinates = []
    coordinates << character_to_index(index)
    coordinates << number_to_index(index)
    coordinates
  end

  def place_ship(user_input)
    placement = user_input.split(" ")
    placement_1 = convert_to_coordinates(placement[0])
    grid[placement_1[0]][placement_1[1]] = "S"
  end

end
