class CashRegister

  attr_accessor :total, :discount, :last_transaction, :items

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity=1)
    self.total = self.total + price * quantity
    self.items << title
    self.items
  end

  def apply_discount
    if discount != 0
      self.total = (total * ((100.0 - discount)/100).to_f).to_i
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total = self.total - self.last_transaction
  end


end
