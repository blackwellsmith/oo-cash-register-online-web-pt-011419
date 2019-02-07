require "pry" 
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
  def apply_discount
    if discount > 0
      discount_amount = @total * (@discount/100)
      with_discount = @total - discount_amount
      #binding.pry
      "After the discount, the total comes to $#{with_discount}."
    else
      "There is no discount to apply."
    end 
  end
end
