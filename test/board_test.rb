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

  def test_it_prints_out_board
    assert_nil nil, @b.make_board
  end

  def test_it_converts_first_character_to_index
    assert_equal 0, @b.character_to_index("A1")
  end

  def test_it_converts_second_number_to_index
    assert_equal 2, @b.number_to_index("A3")
  end

  def test_it_can_convert_both_to_coordinates
    assert_equal [1, 3], @b.convert_to_coordinates("B4")
  end

  def test_it_can_place_the_first_point_of_the_ship
    assert_equal "S", @b.place_ship("B4")
  end

  def test_it_changes_the_grid
    @b.place_ship("B4")
    assert_equal [[" ", " ", " ", " "],
                  [" ", " ", " ", "S"],
                  [" ", " ", " ", " "],
                  [" ", " ", " ", " "]], @b.grid
  end

end
