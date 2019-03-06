require('minitest/autorun')
require('minitest/rg')
require_relative('../customer')
require_relative('../pub')
require_relative('../drink')

class TestDrink < Minitest::Test

def setup
  @drink1 = Drink.new("Bucky", 7, 3)
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

end  # end class
