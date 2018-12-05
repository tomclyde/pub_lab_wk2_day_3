require('minitest/autorun')
require('minitest/rg')
require_relative('../pub')
require_relative('../customer')
require_relative('../drink')

class TestDrink < Minitest::Test

  def setup
    @drink1 = Drink.new("beer", 4.50, 1)
    @drink2 = Drink.new("wine", 4.50, 2)
    @drink3 = Drink.new("whisky", 4.50, 3)
  end

  def test_drink_name
    assert_equal("beer", @drink1.name)
  end

  def test_drink_price
    assert_equal(4.50, @drink1.price)
  end

  def test_drink_alcohol_level
    assert_equal(2, @drink2.alcohol_level)
  end

end
