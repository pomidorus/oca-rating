class AssetDisclosure < ActiveRecord::Base
  belongs_to :city
  validates_presence_of :city
end
