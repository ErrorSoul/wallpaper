class Order < ActiveRecord::Base
  validates :name, :address, :phone, presence: true
  validates :name, :address, :phone, length: {minimum: 3}
  has_many :line_items, dependent: :destroy

  def add_line_items_from_cart(cart)
     
    cart.line_items.each do |item| 
      item.cart_id = nil
      line_items << item
    end
  end
      

end
