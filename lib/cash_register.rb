require "pry"

class CashRegister
  
  attr_accessor :discount
  attr_reader :total, :title, :price, :quantity
  
  def initialize(discount = 0)
    @discount = discount
    @total = 0
  end
  
  def total=(total_price)
    @total += total_price
  end
  
  def add_item(title, price, quantity = 1)
    @total += (price * quantity)
    # h = {:title => title, :price => price, :quantity => quantity}
  end
  
  # def apply_discount
  #   self.total
  #   # self.total -= (self.total * 0.2)
  # end
  
end
