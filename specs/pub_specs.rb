require('minitest/autorun')
require('minitest/rg')
require_relative('../pub')
require_relative('../customer')
require_relative('../drink')

class TestPub < Minitest::Test

  def setup
    @bud = Drink.new("beer",4.50)
    @highland_park =  Drink.new("whisky", 6.00)
    @cust1 = Customer.new("Ryan", 9, 10.00)
    @cust2 = Customer.new("Tom", 33, 50.00)
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

  def test_pub_till__money_increase
  @cust2.buy_drink(@pub2,"whisky")
  cust_drink_price = @pub2.drinks[1].drink_price
  @pub2.pub_till_money_increase(cust_drink_price)
  assert_equal(206.50, @pub2.till)

  end

  def test_cust_age_check__over18
    result = @pub2.cust_age_check(@cust2)
    assert_equal(true, result)
  end

  def test_cust_age_check__under18
    result = @pub2.cust_age_check(@cust1)
    assert_equal(false, result)
  end



end
