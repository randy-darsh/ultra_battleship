require 'pry'

class Board

  attr_reader :grid,
              :coordinates

  def initialize
    @grid = [[' ', ' ', ' ', ' '],
             [' ', ' ', ' ', ' '],
             [' ', ' ', ' ', ' '],
             [' ', ' ', ' ', ' ']]
    @coordinates = [['A1', 'A2', 'A3', 'A4'],
                    ['B1', 'B2', 'B3', 'B4'],
                    ['C1', 'C2', 'C3', 'C4'],
                    ['D1', 'D2', 'D3', 'D4']]
  end

  def make_player_board
    player_board = "\n"
    player_board += "==========\n"
    player_board += "  1 2 3 4\n"
    player_board += 'A ' + grid[0].join(' ') + "\n"
    player_board += 'B ' + grid[1].join(' ') + "\n"
    player_board += 'C ' + grid[2].join(' ') + "\n"
    player_board += 'D ' + grid[3].join(' ') + "\n"
    player_board += '=========='
    p player_board
  end

  def make_computer_board
    computer_board = "\n"
    computer_board += "==========\n"
    computer_board += "  1 2 3 4\n"
    computer_board += 'A ' + grid[0].join(' ') + "\n"
    computer_board += 'B ' + grid[1].join(' ') + "\n"
    computer_board += 'C ' + grid[2].join(' ') + "\n"
    computer_board += 'D ' + grid[3].join(' ') + "\n"
    computer_board += '=========='
    p computer_board
  end

end
