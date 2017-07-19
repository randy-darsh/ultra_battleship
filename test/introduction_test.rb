require 'minitest/autorun'
require 'minitest/emoji'
require './lib/introduction'


class IntroductionTest < Minitest::Test

  def setup
    @intro = Introduction.new
  end

  def test_it_exists
    assert_instance_of Introduction, @intro
  end

  def test_when_you_enter_p_it_prints_the_computers_response
    skip
    assert_equal "\nI have laid out my ships on the grid.
You now need to layout your two ships.
The first is two units long and the
second is three units long.
The grid has A1 at the top left and D4 at the bottom right.\n
Enter the squares for the two-unit ship:", @intro.itself.response == 'p'
  end

end
