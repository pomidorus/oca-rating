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

require 'rails_helper'

RSpec.describe AssetDisclosure, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
