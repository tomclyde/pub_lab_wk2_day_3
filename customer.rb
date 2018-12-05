require 'pry'

class Customer
  attr_reader :name, :age, :drunkness_level, :wallet

  def initialize(name, age, drunkness_level, wallet)
    @name = name
    @age = age
    @drunkness_level = drunkness_level
    @wallet = wallet
  end

  def buy_drink(pub, drink)
    #binding.pry
      if pub.cust_age_check(self) == true && pub.drunk_do_not_serve(self) == false
        if @wallet >= drink.price
          @wallet -= drink.price
          drink_alcohol_level = drink.alcohol_level
          increase_customer_drunkness_level(drink_alcohol_level)
        end
      end
  end

  def increase_customer_drunkness_level(drink_alcohol_level)
    #binding.pry
    @drunkness_level += drink_alcohol_level
  end

  def decrease_customer_drunkness_level(food_rejuvenation_level)
    #binding.pry
    @drunkness_level -= food_rejuvenation_level
  end

  def return_drunkness_level
    return @drunkness_level
  end

  def return_cust_age
    return @age
  end

  def buy_food(pub, food)
    #binding.pry
      if @wallet >= food.return_food_price
        @wallet -= food.return_food_price
        food_rejuvenation_level = food.return_food_rejuvenation_level
        decrease_customer_drunkness_level(food_rejuvenation_level)
      end
  end


end
