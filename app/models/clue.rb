class Clue < ActiveRecord::Base
  
  belongs_to :country
  belongs_to :clue_type
  validates :title, :price,:weight, :consumption, presence: true
  validates :vendor, :country_id, :clue_type_id, presence: true
  validates :marking, presence: true
  validates :title, :consumption, :vendor, length: {minimum: 3}
  validates :marking, length: {minimum: 3, maximum:  25}
  has_many :line_items, as: :product
   validates :price, :weight,  numericality: {greater_than_or_equal_to: 0.01}
  mount_uploader :asset, AssetUploader

  
  
  
end
