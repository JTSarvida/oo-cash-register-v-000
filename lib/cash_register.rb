class CashRegister
  
  attr_accessor :name, :discount, :total, :title, :items
  

  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(title, price, quantity = 1)
    @quantity = quantity
    quantity.times do
      @items << title
    end
    if quantity != 1
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
  
  def items
    @items
  end
  
  
end  
