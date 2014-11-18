class Product < ActiveRecord::Base
  validates :title, :description, :marking,  presence: true
  validates :type_id, :collection_id, :paint_id, presence: true
  validates  :title,  length: {maximum: 100,
                               minimum: 4}
  validates :marking, length: {maximum: 25, minimum: 3  }
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  validates :height, numericality: {greater_than_or_equal_to: 0.01}
  validates :weight, numericality: {greater_than_or_equal_to: 0.01}
  default_scope -> { order('created_at DESC') }
  belongs_to :collection
  belongs_to :type
  belongs_to :paint
  belongs_to :area
  has_many :line_items, as: :product
  mount_uploader :asset, AssetUploader


def self.slider?(arr)
  arr.length > 3
end


def self.make_slider(arr)
  arr.each_slice(3).to_a
end 
end



