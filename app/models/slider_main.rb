class SliderMain < ActiveRecord::Base
  
  mount_uploader :asset, AssetUploader
  validates :text, presence: true
  
end
