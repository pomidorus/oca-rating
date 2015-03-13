# == Schema Information
#
# Table name: asset_disclosures
#
#  id         :integer          not null, primary key
#  url        :string(255)
#  city_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class AssetDisclosure < ActiveRecord::Base
  belongs_to :city
  validates_presence_of :city
end
