require 'pry'

class Pub
  attr_reader :name, :till, :drinks


  def initialize(name, till, drinks=[])
    @name = name
    @till = till
    @drinks = drinks
  end

  def sell_drink
    return @drinks
  end

  def pub_till_money_increase(drink_price)
    @till += drink_price
  end

  def cust_age_check(customer)
    if customer.age >= 18
      return true
    else
      return false
    end
  end



end
