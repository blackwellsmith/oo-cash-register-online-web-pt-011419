class CashRegister
  attr_accessor :discount, :total
  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end
  def total()
    @total - (@total/@discount) = a
    a
    end  
end
