class Collection < ActiveRecord::Base
  belongs_to :label
  has_many :products 
  validates :name, :label_id, presence: true
  validates :name, length: {minimum: 3}
  
end

