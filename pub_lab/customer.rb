class Customer

attr_reader :name

def initialize(name, wallet, age)
  @name = name
  @wallet = wallet
  @age = age
  @drunkenness = 0
end

end # end class
