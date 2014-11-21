class Order < ActiveRecord::Base
  validates :name, :address, :phone, presence: true
  validates :name, :address, :phone, length: {minimum: 3}
  has_many :line_items

end
