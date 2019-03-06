class Pub

attr_reader :name

def initialize(name, till, drinks)
  @name = name
  @till = till
  @drinks = drinks
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

# def pay_drink_price(drink)
#   @wallet -= drink.price
# end

def pub_sell_drink_to_customer(drink, customer)
  take_drink_price(drink)
  customer.pay_drink_price(drink)
end
end # end class
