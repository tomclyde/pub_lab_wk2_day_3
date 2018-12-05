require('minitest/autorun')
require('minitest/rg')
require_relative('../pub')
require_relative('../customer')
require_relative('../drink')

class TestDrink < Minitest::Test

  def setup
    @drink1 = Drink.new("Beer", 4.50)
  end

  def test_drink_name
    assert_equal("Beer", @drink1.name)
  end

  def test_drink_price
    assert_equal(4.50, @drink1.price)
  end

end
