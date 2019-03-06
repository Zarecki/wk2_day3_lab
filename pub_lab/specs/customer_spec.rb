require('minitest/autorun')
require('minitest/rg')
require_relative('../customer')
require_relative('../pub')
require_relative('../drink')

class TestCustomer < Minitest::Test

def setup
  @customer1 = Customer.new("Mr Blobby", 1000, 40)
  @drink1 = Drink.new("Bucky", 7, 3)
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
end  # end class
