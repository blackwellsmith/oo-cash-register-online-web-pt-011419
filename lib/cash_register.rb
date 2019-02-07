class CashRegister
  attr_accessor :cash_register, :cash_register_with_discount, :discount
  def initialize(discount = 0)
     @total = 0
  end
  def discount(discount)
    @discount = discount
  end
  def total() #returns correct total
    
    
  end  
end
