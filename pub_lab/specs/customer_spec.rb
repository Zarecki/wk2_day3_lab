require('minitest/autorun')
require('minitest/rg')
require_relative('../customer')
require_relative('../pub')
require_relative('../drink')
require_relative('../food')

class TestCustomer < Minitest::Test

def setup
  @customer1 = Customer.new("Mr Blobby", 1000, 40)
  @drink1 = Drink.new("Bucky", 7, 3, 5)
  @food1=Food.new("crisps", 1, 2)
end # end setup

def test_customer_name
  assert_equal("Mr Blobby", @customer1.name)
end

def test_customer_age
  assert_equal(40, @customer1.check_age)
end

def test_check_customer_wallet
  assert_equal(1000, @customer1.check_wallet)
end

def test_check_customer_drunkenness
  assert_equal(0, @customer1.check_drunkenness)
end

def test_customer_pays_drink_price
  @customer1.pay_drink_price(@drink1)
  assert_equal(993, @customer1.check_wallet)
end

def test_customer_increase_drunkenness
  @customer1.increase_drunkenness(@drink1)
  assert_equal(3, @customer1.check_drunkenness)
end

def test_customer_decrease_drunkenness
  @customer1.increase_drunkenness(@drink1)
  @customer1.decrease_drunkenness(@food1)
  assert_equal(1, @customer1.check_drunkenness)
end

def test_customer_pays_food_price
  @customer1.pay_food_price(@food1)
  assert_equal(999, @customer1.check_wallet)
end

end  # end class
