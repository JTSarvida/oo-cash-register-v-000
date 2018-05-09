class CashRegister
  
  attr_accessor :name, :discount, :total, :title, :items
  
  @@items = []
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end
  
  def add_item(title, price, quantity = 0)
    @quantity = quantity
    quantity.times do
      @@items << title
    end
      
    if quantity != 0
      @total += price*quantity
    else
      @total += price
    end
    
  end
  
  def apply_discount
    @total -= discount*10
    if discount == 0
      "There is no discount to apply."
    else
      "After the discount, the total comes to $#{@total}."
    end
  end
    
end  
