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

end
