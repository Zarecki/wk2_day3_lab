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

end # end class
