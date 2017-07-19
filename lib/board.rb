require 'pry'

class Board

  attr_reader :grid

  def initialize
    @grid = [[false, false, false, false],
             [false, false, false, false],
             [false, false, false, false],
             [false, false, false, false]]
  end

  # def make_board
  #   player_board = "\n"
  #   player_board += "==========\n"
  #   player_board += "  1 2 3 4\n"
  #   player_board += 'A ' + grid[0].join(' ') + "\n"
  #   player_board += 'B ' + grid[1].join(' ') + "\n"
  #   player_board += 'C ' + grid[2].join(' ') + "\n"
  #   player_board += 'D ' + grid[3].join(' ') + "\n"
  #   player_board += '=========='
  #   puts player_board
  # end

  def character_to_index(position)
    character = position[0]
    character_selection = {"A" => 0, "B" => 1, "C" => 2, "D" => 3}
    character_selection[character]
  end

  def number_to_index(position)
    number = position[1]
    number_selection = {"1" => 0, "2" => 1, "3" => 2, "4" => 3}
    number_selection[number]
  end

  def convert_to_coordinates(position)
    coordinates = []
    coordinates << character_to_index(position)
    coordinates << number_to_index(position)
    coordinates
  end

  def place_ship(user_input)
    positions = user_input.split(" ")
    position_1 = convert_to_coordinates(positions[0])
    position_2 = convert_to_coordinates(positions[1])
    grid[position_1[0]][position_1[1]] = true
    grid[position_2[0]][position_2[1]] = true
  end

end
