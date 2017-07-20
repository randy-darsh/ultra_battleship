require './lib/battleship'
require 'minitest/autorun'
require 'minitest/emoji'

class BattleshipTest < Minitest::Test

  def setup
    @b = Battleship.new
  end

  def test_it_exists
    assert_instance_of Battleship, @b
  end

end
