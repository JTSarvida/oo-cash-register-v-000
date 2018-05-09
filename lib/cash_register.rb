class CashRegister
  
  attr_accessor :name, :discount, :total, :title
  
  @@items = []
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end
  
  def add_item(title, price, quantity = 0)
    @quantity = quantity
    if quantity != 0
      @total += price*quantity
    else
      @total += price
    end
    @@items << title
  end
  
  def apply_discount
    @total -= discount*10
    if discount == 0
      "There is no discount to apply."
    else
      "After the discount, the total comes to $#{@total}."
    end
  end
  
  def self.items
    @@items
  end
    
end  
