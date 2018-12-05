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
    @wallet -= drink.price
    drink_alcohol_level = drink.alcohol_level
    increase_customer_drunkness_level(drink_alcohol_level)
  end

  def increase_customer_drunkness_level(drink_alcohol_level)
    #binding.pry
    @drunkness_level += drink_alcohol_level
  end

end
