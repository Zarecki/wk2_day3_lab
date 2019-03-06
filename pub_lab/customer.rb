class Customer

attr_reader :name

def initialize(name, wallet, age)
  @name = name
  @wallet = wallet
  @age = age
  @drunkenness = 0
end

def check_age
  return @age
end

def check_wallet
  return @wallet
end

def check_drunkenness
  return @drunkenness
end

def pay_drink_price(drink)
  @wallet -= drink.price
end

def increase_drunkenness(drink)
  @drunkenness += drink.alcohol_level
end

end # end class
