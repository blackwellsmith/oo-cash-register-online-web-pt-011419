class CashRegister
  attr_accessor :discount, :total
  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end
  def total
    if @discount > 0
      amount = @total - (@total/@discount)
    else 
      amount = @total
    end
    amount
  end
  def add_item(title, price, quantity = 1)
    previous_total = @total
    @total = @total + (price*(quantity))
  end 
end
