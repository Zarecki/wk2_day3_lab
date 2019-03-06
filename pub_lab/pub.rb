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

end # end class
