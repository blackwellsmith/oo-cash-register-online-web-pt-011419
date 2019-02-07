require "pry" 
class CashRegister
  attr_accessor :discount, :total
  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end
  
  #def total
   # if @discount > 0
     #  discount_amount = @total * (@discount/100.00)
     #  amount = @total - discount_amount
      
   # else 
    #  amount = @total
  #  end
   # amount
  #end
  def add_item(title, price, quantity = 1)
    previous_total = @total
    @total = @total + (price*(quantity))
  end
  def apply_discount
    if @discount != 0
      discount_amount = @total * (@discount/100.00)
      @total = @total - discount_amount
      @total = @total.to_i
      #binding.pry
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end 
  end
  def items 
    
end
end