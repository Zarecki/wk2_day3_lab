require('minitest/autorun')
require('minitest/rg')
require_relative('../customer')
require_relative('../pub')
require_relative('../drink')

class TestPub < Minitest::Test

def setup
  @drink1 = Drink.new("Bucky", 7, 3)
  @drink2 = Drink.new("White Lightning", 3, 2)
  @drink3 = Drink.new("Tennants", 5, 2)
  @drink4 = Drink.new("Pimms", 8, 1)
  @customer1 = Customer.new("Mr Blobby", 1000, 40)
  @pub1 = Pub.new("The Winking Duck", 100, [@drink1, @drink2, @drink3, @drink4])
end # end setup

def test_pub_name
  assert_equal("The Winking Duck", @pub1.name)
end

def test_pub_till
  assert_equal(100, @pub1.check_till)
end

def test_pub_drinks
  # p @pub1.list_drinks
  assert_equal([@drink1, @drink2, @drink3, @drink4], @pub1.list_drinks)
end

def test_pub_gets_drink_price
  @pub1.take_drink_price(@drink1)
  assert_equal(107, @pub1.check_till)
end

def test_pub_sell_drink_to_customer
  # @pub1.take_drink_price(@drink1)
  # @customer1.pay_drink_price(@drink1)
  @pub1.pub_sell_drink_to_customer(@drink1, @customer1)
  assert_equal(107, @pub1.check_till)
  assert_equal(993, @customer1.check_wallet)
end

end  # end class
