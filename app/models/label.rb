class Label < ActiveRecord::Base
  belongs_to :country
  has_many   :collections

  validates :name, :country_id,  presence: true
  validates :name, length: {minimum: 3}

  validates :name, uniqueness: true
  mount_uploader :asset, AssetUploader
  
end
