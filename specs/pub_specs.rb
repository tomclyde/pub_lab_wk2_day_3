require('minitest/autorun')
require('minitest/rg')
require_relative('../pub')
#require_relative('../customer')
#require_relative('../drink')

class TestPub < Minitest::Test

  def setup
    @pub1 = Pub.new("Standing Order", 0.0, [])
  end

  def test_pub_name
    assert_equal("Standing Order", @pub1.name)
  end

  def test_till__empty
    assert_equal(0.0, @pub1.till)
  end

  def test_drinks__empty
    assert_equal([], @pub1.drinks)
  end


end
