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

def pay_food_price(food)
  @wallet -= food.price
end

def increase_drunkenness(drink)
  @drunkenness += drink.alcohol_level
end

def decrease_drunkenness(food)
  @drunkenness -= food.get_rejuvenation_level
end
end # end class
