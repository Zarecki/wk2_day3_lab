class Pub

attr_reader :name

def initialize(name, till, drinks)
  @name = name
  @till = till
  @drinks = drinks
  @stock = {}
end

def list_stock
end

def get_total_stock_value
  stock_value = 0
  for drink in @drinks
    stock_value += ( drink.price * drink.stock_count )
  end
  return stock_value
end

def check_till
  return @till
end

def list_drinks
  return @drinks
end

def take_drink_price(drink)
  @till += drink.price
end

def take_food_price(food)
  @till += food.price
end

def pub_sell_food_to_customer(food, customer)
  take_food_price(food)
  customer.pay_food_price(food)
  customer.decrease_drunkenness(food)
end
# def pay_drink_price(drink)
#   @wallet -= drink.price
# end

def pub_sell_drink_to_customer(drink, customer)
  if (check_customer_age(customer)) && (!check_customer_drunkenness(customer))
    take_drink_price(drink)
    customer.pay_drink_price(drink)
    customer.increase_drunkenness(drink)
  else
    p "underage" if (check_customer_age(customer))
    p "drunk" if (!check_customer_drunkenness(customer))
  end
end

def check_customer_age(customer)
  return true if (customer.check_age >= 18)
  return false
end

def check_customer_drunkenness(customer)
  return true if (customer.check_drunkenness >= 5)
  return false
end



end # end class
