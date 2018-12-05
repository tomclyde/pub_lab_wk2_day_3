require 'pry'

class Customer
  attr_reader :name, :age, :drunkness_level, :wallet

  def initialize(name, age, drunkness_level, wallet=[])
    @name = name
    @age = age
    @drunkness_level = drunkness_level
    @wallet = wallet
  end

  def buy_drink(pub, drink)
    #binding.pry
      if pub.cust_age_check(self) == true && pub.drunk_do_not_serve(self) == false
        @wallet -= drink.price
        drink_alcohol_level = drink.alcohol_level
        increase_customer_drunkness_level(drink_alcohol_level)
      end
  end

  def increase_customer_drunkness_level(drink_alcohol_level)
    #binding.pry
    @drunkness_level += drink_alcohol_level
  end

  def return_drunkness_level
    return @drunkness_level
  end

  def return_cust_age
    return @age
  end

end
