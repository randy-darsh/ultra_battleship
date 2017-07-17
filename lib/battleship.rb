require_relative 'introduction'
require_relative 'board'

class Battleship

  attr_reader :intro,
              :board

  def initialize
    @intro = Introduction.new
    @board = Board.new
  end

  def method_name

  end

end
