require_relative 'introduction'
require_relative 'board'

class Battleship

  attr_reader :intro,
              :board

  def initialize
    @intro = Introduction.intro
    @player_board = Board.new
    @computer_board = Board.new
  end

end
