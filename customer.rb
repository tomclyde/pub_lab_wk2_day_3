require 'pry'

class Customer
  attr_reader :name, :age, :wallet

  def initialize(name, age, wallet=[])
    @name = name
    @age = age
    @wallet = wallet
 end 
end
