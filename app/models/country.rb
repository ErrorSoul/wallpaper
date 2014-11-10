class Country < ActiveRecord::Base
  has_many :labels
  validates :name, presence: true
  validates :name , length: {minimum:3}
  validates :name, :uniqueness => true
  mount_uploader :asset, AssetUploader
end
