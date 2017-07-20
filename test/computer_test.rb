require './lib/computer'
require 'minitest/autorun'
require 'minitest/emoji'

class ComputerTest < Minitest::Test

  def setup
    @c = Computer.new
  end

  def test_it_exists
    assert_instance_of Computer, @c
  end

end
