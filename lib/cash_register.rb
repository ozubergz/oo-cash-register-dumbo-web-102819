require "pry"

class CashRegister
  
  attr_accessor :discount, :total
  attr_reader :title, :price, :quantity
  
  def initialize(discount = 0)
    @discount = discount
    @total = 0
  end
  
  def add_item(title, price, quantity = 1)
    self.total += (price * quantity)
  end
  
  def apply_discount
    discount = self.discount * 0.01
    self.total -= (self.total * discount)
  end
  
end
