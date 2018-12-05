require 'pry'

class Customer
  attr_reader :name, :age, :wallet

  def initialize(name, age, wallet=[])
    @name = name
    @age = age
    @wallet = wallet
  end

  def buy_drink(pub, drink_name)
    pub_drinks = pub.sell_drink
    #binding.pry
    for drink in pub_drinks
      if drink.name == 'whisky'
        @wallet -= drink.price
      end
    end
  end


end
