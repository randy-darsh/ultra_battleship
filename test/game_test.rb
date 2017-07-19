require 'minitest/autorun'
require 'minitest/emoji'
require './lib/game'

class GameTest < Minitest::Test

  def setup
    @g = Game.new
  end

  def test_it_exists
    assert_instance_of Game, @g
  end

end
