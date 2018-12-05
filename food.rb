require 'pry'

class Food
  attr_reader :food_name, :food_price, :food_rejuvenation_level


  def initialize(food_name, food_price, food_rejuvenation_level)
    @food_name = food_name
    @food_price = food_price
    @food_rejuvenation_level = food_rejuvenation_level
  end

  def return_food_price
    return @food_price
  end

  def return_food_rejuvenation_level
    return food_rejuvenation_level
  end



end
