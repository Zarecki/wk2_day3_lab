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

end  # end class
