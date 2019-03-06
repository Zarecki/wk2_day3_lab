require('minitest/autorun')
require('minitest/rg')
require_relative('../customer')
require_relative('../pub')
require_relative('../drink')
require_relative('../food')

class TestFood < Minitest::Test

  def setup
    @food1=Food.new("crisps", 1, 2)
  end

  def test_food_name
    assert_equal("crisps", @food1.name)
  end

  def test_food_price
    assert_equal(1, @food1.price)
  end

  def test_food_rejuvenation
    assert_equal(2, @food1.get_rejuvenation_level)
  end


end # end class
