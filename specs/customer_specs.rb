require('minitest/autorun')
require('minitest/rg')
require_relative('../pub')
require_relative('../customer')
require_relative('../drink')

class TestCustomer < Minitest::Test

  def setup
    @cust1 = Customer.new("Jennifer", 21, 0.0)
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

end
