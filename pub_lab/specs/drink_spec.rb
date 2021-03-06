require('minitest/autorun')
require('minitest/rg')
require_relative('../customer')
require_relative('../pub')
require_relative('../drink')
require_relative('../food')

class TestDrink < Minitest::Test

def setup
  @drink1 = Drink.new("Bucky", 7, 3, 5)
end # end setup

def test_drink_name
  assert_equal("Bucky", @drink1.name)
end

def test_drink_price
  assert_equal(7, @drink1.price)
end
def test_drink_alcohol_level
  assert_equal(3, @drink1.alcohol_level)
end

def test_drink_stock_count
  assert_equal(5, @drink1.stock_count)
end
end  # end class
