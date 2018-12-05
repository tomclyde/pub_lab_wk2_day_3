require 'pry'
require('minitest/autorun')
require('minitest/rg')
require_relative('../pub')
require_relative('../customer')
require_relative('../drink')
require_relative('../food')

class TestCustomer < Minitest::Test

  def setup
    @cust1 = Customer.new("Jennifer", 21, 0, 0.0)
    @cust2 = Customer.new("Tom", 33, 3, 50.00)
    @cust3 = Customer.new("Louise", 32, 9, 30.00)
    @cust4 = Customer.new("Arun", 24, 12, 2.00)
    @cust5 = Customer.new("Ryan", 9, 0, 20.00)
    @pie = Food.new("pie", 2.10, 1)
    @chips = Food.new("chips", 4.50, 2)
    @steak = Food.new("steak", 25.00, 3)

    @bud = Drink.new("beer",4.50, 1)
    @highland_park =  Drink.new("whisky", 6.00, 3)

    @pub2 = Pub.new("Milnes", 200.50, [@bud, @highland_park],[])
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

  def test_customer_buy_drink__over18
    #binding.pry
    @cust2.buy_drink(@pub2, @highland_park)
    assert_equal(44.00, @cust2.wallet)
  end

  def test_customer_buy_drink__under18
    #binding.pry
    @cust5.buy_drink(@pub2, @highland_park)
    assert_equal(20, @cust5.wallet)
  end

  def test_customer_buy_drink__no_money
    #binding.pry
    @cust1.buy_drink(@pub2, @highland_park)
    assert_equal(0, @cust1.drunkness_level)
  end

  def test_increase_customer_drunkness_level
    #binding.pry
    @cust2.buy_drink(@pub2, @highland_park)
    assert_equal(6, @cust2.drunkness_level)
  end

  def test_customer_buy_food__has_money
    #binding.pry
    @cust2.buy_food(@pub2, @chips)
    assert_equal(1, @cust2.drunkness_level)
  end

  def test_customer_buy_food__no_money
    #binding.pry
    @cust4.buy_food(@pub2, @chips)
    assert_equal(12, @cust4.drunkness_level)
  end


end
