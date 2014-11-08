class Collection < ActiveRecord::Base
  belongs_to :label
  has_many :products 
end

