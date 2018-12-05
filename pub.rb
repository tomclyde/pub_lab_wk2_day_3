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

end
