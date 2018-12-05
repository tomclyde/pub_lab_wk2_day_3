require('minitest/autorun')
require('minitest/rg')
require_relative('../pub')
require_relative('../customer')
require_relative('../drink')

class TestPub < Minitest::Test

  def setup
    @bud = Drink.new("beer",4.50, 1)
    @highland_park =  Drink.new("whisky", 6.00, 3)
    @cust1 = Customer.new("Ryan", 9, 0, 10.00)
    @cust2 = Customer.new("Tom", 33, 6, 50.00)
    @cust3 = Customer.new("Louise", 32, 9, 30.00)
    @cust4 = Customer.new("Arun", 24, 12, 20.00)
    @cust5 = Customer.new("Ryan", 9, 0, 20.00)
    @pub1 = Pub.new("Standing Order", 0.0, [])
    @pub2 = Pub.new("Milnes", 200.50, [@bud, @highland_park])
  end

  def test_pub_name
    assert_equal("Standing Order", @pub1.name)
  end

  def test_till__empty
    assert_equal(0.0, @pub1.till)
  end

  def test_till__value
    assert_equal(200.50, @pub2.till)
  end

  def test_drinks__empty
    assert_equal([], @pub1.drinks)
  end

  def test_drinks__populated
    assert_equal([@bud,@highland_park], @pub2.drinks)
  end

  def test_pub_till_increase
    if @pub2.cust_age_check(@cust2)
      @cust2.buy_drink(@pub2,@highland_park)
      cust_drink_price = @pub2.drinks[1].drink_price
      @pub2.pub_till_money_increase(cust_drink_price)
      assert_equal(206.50, @pub2.till)
    end
  end

  def test_cust_age_check__over18
    result = @pub2.cust_age_check(@cust2)
    assert_equal(true, result)
  end

  def test_cust_age_check__under18
    result = @pub2.cust_age_check(@cust1)
    assert_equal(false, result)
  end

  def test_drunk_do_not_serve__true
    assert_equal(true, @pub2.drunk_do_not_serve(@cust4))
  end

  def test_drunk_do_not_serve__false
    assert_equal(false, @pub2.drunk_do_not_serve(@cust2))
  end

end
