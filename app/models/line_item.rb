class LineItem < ActiveRecord::Base
  belongs_to :product, polymorphic: true
  belongs_to :cart
  belongs_to :order
end
