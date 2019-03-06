class Food

attr_reader :name, :price

  def initialize(name, price, rejuvenation_level)
    @name = name
    @price = price
    @rejuvenation_level = rejuvenation_level
  end

  def get_rejuvenation_level
    return @rejuvenation_level
  end


end # end class
