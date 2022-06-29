class CashRegister

  attr_accessor :total, :discount, :title, :price, :quantity, :items

  def initialize discount = 0
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item title, price, quantity = 1
    
    @title = title
    @price = price
    @quantity = quantity
    @total += (price * quantity)
    quantity.times do 
      @items << title
    end
    
  end

  def apply_discount 
    if discount > 0
      @total = @price - (@price * (@discount.to_f / 100))
      "After the discount, the total comes to $#{@total.to_i}."
    else "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= (price * quantity)
  end

end

