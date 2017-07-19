require 'minitest/autorun'
require 'minitest/emoji'
require './lib/board'

class BoardTest < Minitest::Test

  def setup
    @b = Board.new
  end

  def test_it_exists
    assert_instance_of Board, @b
  end

  def test_it_has_a_grid
    assert_equal [[' ', ' ', ' ', ' '],
                  [' ', ' ', ' ', ' '],
                  [' ', ' ', ' ', ' '],
                  [' ', ' ', ' ', ' ']], @b.grid
  end

  def test_it_has_coordinates
    assert_equal [['A1', 'A2', 'A3', 'A4'],
                  ['B1', 'B2', 'B3', 'B4'],
                  ['C1', 'C2', 'C3', 'C4'],
                  ['D1', 'D2', 'D3', 'D4']], @b.coordinates
  end

  def test_it_prints_out_board
    assert_nil nil, @b.make_player_board
  end

end
