require "pry"

class CashRegister
  
  attr_accessor :discount
  attr_reader :total, :title, :price, :quantity
  
  def initialize(discount = 0)
    @discount = discount
    @total = 0
  end
  
  # def total=(total_price)
  #   @total += total_price
  # end
  
  def add_item(title, price, quantity = 1)
    self.total += (price * quantity)
  end
  
  # def apply_discount
  #   discount = self.discount * 0.01
  #   self.total -= (self.total * discount)
  # end
  
end
