class CashRegister
  attr_accessor :discount, :total
  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end
  def total()
    amount = @total - (@total/@discount)
    amount.to_f
    end  
end
