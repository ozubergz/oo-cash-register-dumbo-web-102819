require "pry"

class CashRegister
  
  attr_accessor :discount
  # attr_reader :discount, :title, :price, :quantity
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end
  
  
  def add_item(title, price, quantity = 1)
    self.total += (price * quantity)
    # h = {:title => title, :price => price, :quantity => quantity}
  end
  
  # def apply_discount
  #   self.total
  #   # self.total -= (self.total * 0.2)
  # end
  
end
