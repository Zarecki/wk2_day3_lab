class Drink

attr_reader :name, :price, :alcohol_level, :stock_count

def initialize(name, price, alcohol_level, stock_count)
  @name = name
  @price = price
  @alcohol_level = alcohol_level
  @stock_count = stock_count
end


end # end class
