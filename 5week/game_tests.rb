require 'minitest/autorun'
require_relative 'gameboard.rb'

class TestSetLocations < MiniTest::Unit::TestCase

  def setup
    @board = GameBoard.new
  end

  def test_location_setter
    counter = 0
    random_no = rand(5)
    locations = [random_no, random_no+1,random_no+2]
    @board.set_locations_cells(locations)
    @board.game_cells.each do |cell|
      if cell == false
        counter += 1
      end
  end
    assert_equal(3,counter,"The cells are not setting correctly")
  end

  def test_check_yourself
    1.upto(7) do |number|
    result = @board.check_yourself(number)
      if @board.game_cells.include?(false)
        assert_equal(result,"alive","The game board shouldn't be dead.")
      else
        assert_equal(result,"kill","The game baord shouldn't be alive.")
      end
    end
  end
end



