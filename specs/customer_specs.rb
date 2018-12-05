require('minitest/autorun')
require('minitest/rg')
require_relative('../pub')
require_relative('../customer')
require_relative('../drink')

class TestCustomer < Minitest::Test

  def setup
    @cust1 = Customer.new("Jennifer", 21, 0.0)
    @cust2 = Customer.new("Tom", 33, 50.00)

    @bud = Drink.new("beer",4.50)
    @highland_park =  Drink.new("whisky", 6.00)

    @pub2 = Pub.new("Milnes", 200.50, [@bud, @highland_park] )
  end

  def test_customer_name
    assert_equal("Jennifer", @cust1.name)
  end

  def test_customer_age
    assert_equal(21, @cust1.age)
  end

  def test_customer_wallet__empty
    assert_equal(0.0, @cust1.wallet)
  end

  def test_customer_wallet__value
    assert_equal(50.00, @cust2.wallet)
  end

  def test_customer_buy_drink__whisky
    @cust2.buy_drink(@pub2, "whisky")
    assert_equal(44.00, @cust2.wallet)
  end


end
