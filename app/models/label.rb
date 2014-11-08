class Label < ActiveRecord::Base
  belongs_to :country
  has_many   :collections
end
