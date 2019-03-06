require('minitest/autorun')
require('minitest/rg')
require_relative('../customer')
require_relative('../pub')
require_relative('../drink')
require_relative('../food')

class TestPub < Minitest::Test

def setup
  @drink1 = Drink.new("Bucky", 7, 3)
  @drink2 = Drink.new("White Lightning", 3, 2)
  @drink3 = Drink.new("Tennants", 5, 2)
  @drink4 = Drink.new("Pimms", 8, 1)
  @drink5 = Drink.new("zombie", 10, 11)
  @customer1 = Customer.new("Mr Blobby", 1000, 40)
  @customer2 = Customer.new("Wee Tam", 10, 14)
  @customer3 = Customer.new("Big Tam", 100, 44)
  @food1=Food.new("crisps", 1, 2)
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
  @pub1.pub_sell_drink_to_customer(@drink1, @customer1)
  assert_equal(107, @pub1.check_till)
  assert_equal(993, @customer1.check_wallet)
end

def test_pub_sell_drink_to_customer__refuse_underage
  @pub1.pub_sell_drink_to_customer(@drink1, @customer2)
  assert_equal(100, @pub1.check_till)
  assert_equal(10, @customer2.check_wallet)
end

def test_pub_sell_drink_to_customer__refuse_drunk
  @pub1.pub_sell_drink_to_customer(@drink5, @customer3)
  @pub1.pub_sell_drink_to_customer(@drink1, @customer3)
  assert_equal(110, @pub1.check_till)
  assert_equal(90, @customer3.check_wallet)
end

def test_pub_check_customer_age__old_enough
  assert_equal(true, @pub1.check_customer_age(@customer1))
end

def test_pub_check_customer_age__underage
  assert_equal(false, @pub1.check_customer_age(@customer2))
end

def test_customer_increase_drunkenness
  # copied from customer spec
  @customer1.increase_drunkenness(@drink1)
  assert_equal(3, @customer1.check_drunkenness)
end

def test_pub_refuse_drunk_customer__drunk
  @pub1.pub_sell_drink_to_customer(@drink5, @customer3)
  assert_equal(true, @pub1.check_customer_drunkenness(@customer3))

end

def test_pub_refuse_drunk_customer__not_drunk
  assert_equal(false, @pub1.check_customer_drunkenness(@customer1))

end

def test_pub_gets_food_price
  @pub1.take_food_price(@food1)
  assert_equal(101, @pub1.check_till)
end

def test_pub_sell_food_to_customer
  @pub1.pub_sell_food_to_customer(@food1, @customer1)
  assert_equal(101, @pub1.check_till)
  assert_equal(999, @customer1.check_wallet)
  assert_equal(-2, @customer1.check_drunkenness)
end

end  # end class
