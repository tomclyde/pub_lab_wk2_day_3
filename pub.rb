require 'pry'

class Pub
  attr_reader :name, :till, :drinks


  def initialize(name, till, drinks=[])
    @name = name
    @till = till
    @drinks = drinks
  end


  def pub_till_money_increase(drink_price)
    @till += drink_price
  end

  def cust_age_check(customer)
    #binding.pry
    if customer.return_cust_age >= 18
      return true
    else
      return false
    end
  end

  def drunk_do_not_serve(customer)
    if customer.return_drunkness_level >= 10
      return true
    else
      return false
    end
  end



end
