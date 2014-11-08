class Product < ActiveRecord::Base
  validates :title, :description, :marking, presence: true
  validates  :title,  length: {maximum: 100,
                               minimum: 4}
  validates :marking, length: {maximum: 25, minimum: 3  }
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  validates :height, numericality: {greater_than_or_equal_to: 0.01}
  validates :weight, numericality: {greater_than_or_equal_to: 0.01}
  belongs_to :collection
  belongs_to :type
  
end
