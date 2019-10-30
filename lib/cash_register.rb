require "pry"

class CashRegister
  
  attr_accessor :discount, :total, :items_array
  attr_reader :title, :price, :quantity
  
  ITEMS = []
  
  def initialize(discount = 0)
    @discount = discount
    @total = 0
    @items_array = []
  end
  
  def add_item(title, price, quantity = 1)
    quantity.times do
    end
    self.items_array << title
    self.total += (price * quantity)
  end
  
  def apply_discount
    if(@discount == 0)
      return "There is no discount to apply."
    else
      discount = self.discount * 0.01
      self.total -= (self.total * discount)
      return "After the discount, the total comes to $#{self.total.round}."
    end
  end
  
  def items
    self.items_array
  end
end
