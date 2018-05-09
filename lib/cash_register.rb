class CashRegister
  
  attr_accessor :name, :discount, :total, :title, :items, :last_transaction 
  

  
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
  
  def self.void_last_transaction
    last_index = @items.length-1
    @items[last_index]
  end
end  
