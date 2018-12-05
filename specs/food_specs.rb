require('minitest/autorun')
require('minitest/rg')
require_relative('../pub')
require_relative('../customer')
require_relative('../drink')
require_relative('../food')

class TestFood < Minitest::Test

  def setup
    @pie = Food.new("pie", 2.10, 1)
    @chips = Food.new("chips", 4.50, 2)
    @steak = Food.new("steak", 25.00, 3)
  end

  def test_food_name
    assert_equal("pie", @pie.food_name)
  end

  def test_food_price
    assert_equal(4.50, @chips.food_price)
  end

  def test_food_rejuvenation_level
    assert_equal(2, @chips.food_rejuvenation_level)
  end

end
